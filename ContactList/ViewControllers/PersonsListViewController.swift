//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Алексей Исаев on 08.12.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    private let persons = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.phoneNumber
        cell.contentConfiguration = content

        // Configure the cell...

        return cell
    }


}
