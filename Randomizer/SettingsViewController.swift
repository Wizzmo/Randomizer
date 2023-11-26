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
    
    var minimumValue: String! // Создали свойства-посредники, которые будут инициализированы одновременно с классом SettingsViewController
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue // Взяли значение из свойства minimumValue и поместили его в элемент интерыейса minimumValueTF
        maximumValueTF.text = maximumValue
    }
    
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
    }
    
}
