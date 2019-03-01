//
//  AutoLayoutCollectionView.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 2/28/19.
//  Copyright © 2019 Greg Wells. All rights reserved.
//

import UIKit

class AutoLayoutCollectionView: UICollectionView {
    
    override func layoutSubviews() {
        print("\n----| AutoLayoutCollectionView |----")
        print("bounds.size:   \(bounds.size)")
        print("intrinsicSize: \(intrinsicContentSize)")
        print("contentSize:   \(contentSize)")
        print("------------------------------------\n")
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        return self.contentSize
    }
    
    func disableScrolling() {
        self.isScrollEnabled = false
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.bounces = false
    }

}
