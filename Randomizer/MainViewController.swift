//
//  ViewController.swift
//  Randomizer
//
//  Created by Maxim Makarov on 24.11.2023.
//

import UIKit

final class MainViewController: UIViewController {

    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController // Создали свойство, в котором содержится ссылка на ViewController, на который мы переходим и привели к типу SettingsViewController
        settingsVC?.minimumValue = minimumValueLabel.text // Присваиваем свойствам-посредникам из SettingsViewController значения из лейблов MainViewController
        settingsVC?.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    

}

