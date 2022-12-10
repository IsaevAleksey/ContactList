//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Алексей Исаев on 08.12.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = person.phoneNumber
//            content.image = UIImage
        } else {
            content.text = person.email
//            content.image = UIImage
        }
        return cell
    }
}
