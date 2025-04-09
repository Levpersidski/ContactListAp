//
//  TabBarViewController.swift
//  ContactListAp
//
//  Created by SWIFT on 08.04.2025.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        
        viewControllers?.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let contactVC = navigationVC.topViewController as? ContactProfileViewController
                contactVC?.persons = persons
                let personListVC = navigationVC.topViewController as? PersonListViewController
                personListVC?.persons = persons
            }
        }
    }
}

                
        
    
    

