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
		
		tableView.register(UINib(nibName: "MultiButtonTableViewCell", bundle: Bundle(for: MultiButtonTableViewCell.self)), forCellReuseIdentifier: "MultiButtonTableViewCell")
    }

    // MARK: - Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MultiButtonTableViewCell", for: indexPath) as? MultiButtonTableViewCell else { return UITableViewCell() }
		cell.title = "Label #\(indexPath.row + 1)"
		return cell
    }
    
}
