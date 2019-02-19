//
//  MultiButtonTableViewCell.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class MultiButtonTableViewCell: UITableViewCell {
	
	static let reuseIdentifier: String = "MultiButtonTableViewCell"

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
	
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
		collectionView.register(UINib(nibName: "ButtonCollectionViewCell", bundle: Bundle(for: ButtonCollectionViewCell.self)), forCellWithReuseIdentifier: ButtonCollectionViewCell.reuseIdentifier)
		collectionView.isScrollEnabled = false
		
		collectionViewLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
		collectionViewLayout.minimumInteritemSpacing = 0.0
		collectionViewLayout.minimumLineSpacing = 5.0
	}
    
}

extension MultiButtonTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		print("UICollectionView.numberOfItemsInSection")
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		print("UICollectionView.cellForItemAt")
		print("Colletion View Width: \(collectionView.bounds.width)")
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ButtonCollectionViewCell.reuseIdentifier, for: indexPath) as? ButtonCollectionViewCell else { return UICollectionViewCell() }
		cell.title = "BTN #\(indexPath.row)"
		return cell
	}
	
}
