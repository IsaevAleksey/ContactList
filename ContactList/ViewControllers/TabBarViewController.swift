//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Алексей Исаев on 10.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let contactListVC = viewControllers?.first as? ContactsListViewController else { return }
        contactListVC.persons = persons
        guard let personListVC = viewControllers?.last as? PersonsListViewController else { return }
        personListVC.persons = persons
    }
}
