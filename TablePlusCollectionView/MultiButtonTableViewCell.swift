//
//  MultiButtonTableViewCell.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class MultiButtonTableViewCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var collectionViewFlowController: UICollectionViewFlowLayout!
	
	var title: String {
		get {
			return titleLabel.text ?? "Not yet set"
		}
		set {
			titleLabel.text = newValue
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.register(UINib(nibName: "ButtonCollectionViewCell", bundle: Bundle(for: ButtonCollectionViewCell.self)), forCellWithReuseIdentifier: "ButtonCollectionViewCell")
		collectionView.isScrollEnabled = false
		
		collectionViewFlowController.estimatedItemSize = CGSize(width: 1.0, height: 1.0)
		collectionViewFlowController.minimumInteritemSpacing = 0.0
		collectionViewFlowController.minimumLineSpacing = 5.0
	}
    
}

extension MultiButtonTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCollectionViewCell", for: indexPath) as? ButtonCollectionViewCell else { return UICollectionViewCell() }
		cell.title = "BTN #\(indexPath.row)"
		return cell
	}
	
}
