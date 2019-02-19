//
//  ButtonCollectionViewCell.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
	
	static let reuseIdentifier: String = "ButtonCollectionViewCell"

	@IBOutlet weak var button: UIButton!
	
	var title: String {
		get {
			return button.titleLabel?.text ?? "Not yet set"
		}
		set {
			button.titleLabel?.text = newValue
		}
	}
	
	@IBAction func buttonPressed(_ sender: UIButton) {
		print("Button (\(sender.currentTitle!)) Pressed!")
	}
	
}
