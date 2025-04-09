//
//  ContactsProfileViewController.swift
//  ContactListAp
//
//  Created by SWIFT on 08.04.2025.
//

import UIKit

class ContactProfileViewController: UITableViewController {
    
    var persons: [Person]?
    
}

// MARK: - UITableViewDataSource
extension ContactProfileViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons?[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        let person = persons?[indexPath.section]
        var content  = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person?.phoneNumber
            content.image = UIImage(systemName: "phone.fill")
            content.imageProperties.tintColor = .systemGreen
        case 1:
            content.text = person?.email
            content.image = UIImage(systemName: "envelope.fill")
            content.imageProperties.tintColor = .systemBlue
        default:
            break
        }
        cell.contentConfiguration = content
        return cell
    }
}
