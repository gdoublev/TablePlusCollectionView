//
//  CustomTableViewController.swift
//  TablePlusCollectionView
//
//  Created by Greg Wells on 5/1/18.
//  Copyright © 2018 Greg Wells. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.register(MultiButtonTableViewCell.nib, forCellReuseIdentifier: MultiButtonTableViewCell.reuseIdentifier)
		tableView.rowHeight = UITableView.automaticDimension
		tableView.estimatedRowHeight = 100.0
    }

    // MARK: - Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Screen Size: \(UIScreen.main.bounds.size)")
        print("Table View Size: \(tableView.bounds.size)")
		guard let cell = tableView.dequeueReusableCell(withIdentifier: MultiButtonTableViewCell.reuseIdentifier, for: indexPath) as? MultiButtonTableViewCell else { return UITableViewCell() }
        print("Table View Cell Size: \(cell.bounds.size)")
        cell.titleLabel.text = "Label #\(indexPath.row + 1)"
		return cell
    }
    
}
