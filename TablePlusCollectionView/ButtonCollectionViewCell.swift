//
//  ButtonCollectionViewCell.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
	
    static let nib: UINib = UINib(nibName: "ButtonCollectionViewCell", bundle: Bundle(for: ButtonCollectionViewCell.self))
	static let reuseIdentifier: String = "ButtonCollectionViewCell"

	@IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.leftAnchor.constraint(equalTo: leftAnchor),
            contentView.rightAnchor.constraint(equalTo: rightAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
	
	@IBAction func buttonPressed(_ sender: UIButton) {
		print("Button (\(sender.currentTitle!)) Pressed!")
	}
	
}
