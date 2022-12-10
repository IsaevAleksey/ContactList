//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Алексей Исаев on 08.12.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
