//
//  ContactDetailsViewController.swift
//  ContactListAp
//
//  Created by SWIFT on 08.04.2025.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = person?.phoneNumber
        emailLabel.text = person?.email
        title = person?.fullName
        
    }
}
