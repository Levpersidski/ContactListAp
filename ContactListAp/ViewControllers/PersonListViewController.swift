//
//  ViewController.swift
//  ContactListAp
//
//  Created by SWIFT on 07.04.2025.
//

import UIKit

class PersonListViewController: UITableViewController {

    var persons: [Person]?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = sender as? Person
    }
}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        let person = persons?[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person?.fullName
        
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let person = persons?[indexPath.row] else { return }
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}
