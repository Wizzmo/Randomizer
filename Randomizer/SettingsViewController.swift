//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Maxim Makarov on 26.11.2023.
//

import UIKit

final class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
    }
    
}
