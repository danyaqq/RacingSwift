//
//  ViewController.swift
//  racing
//
//  Created by user on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {
    var playerName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeAppAction(_ sender: Any) {
        exit(0)
    }
    
    @IBAction func settingAction(_ sender: Any) {
        let alert = UIAlertController(title: "Settings name", message: "Enter player nickname. \n Nickname is now \(playerName)", preferredStyle: .alert)
        alert.addTextField{(textField) in textField.placeholder = "Player name"
            
        }
        let cancelAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        let addAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let name = alert.textFields![0].text
            self.playerName = name
        }
        alert.addAction(cancelAction)
        alert.addAction(addAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}

