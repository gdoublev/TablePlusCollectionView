//
//  MultiButtonTableViewCell.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class MultiButtonTableViewCell: UITableViewCell {
	
    static let nib: UINib = UINib(nibName: "MultiButtonTableViewCell", bundle: Bundle(for: MultiButtonTableViewCell.self))
	static let reuseIdentifier: String = "MultiButtonTableViewCell"

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var collectionView: AutoLayoutCollectionView!
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // set delegates and register collection view cell
        collectionView.delegate = self
        collectionView.dataSource = self
		collectionView.register(ButtonCollectionViewCell.nib, forCellWithReuseIdentifier: ButtonCollectionViewCell.reuseIdentifier)
        
        // disable scrolling on collection view
        collectionView.disableScrolling()
		
        // setup estimated item size and minimum spacing
        collectionViewLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionViewLayout.minimumInteritemSpacing = 8.0
        collectionViewLayout.minimumLineSpacing = 8.0
	}
    
}

extension MultiButtonTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Colletion View Size: \(collectionView.bounds.size)")
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ButtonCollectionViewCell.reuseIdentifier, for: indexPath) as? ButtonCollectionViewCell else { return UICollectionViewCell() }
        cell.button.setTitle("BTN #\(indexPath.row)", for: .normal)
		return cell
	}
	
}
