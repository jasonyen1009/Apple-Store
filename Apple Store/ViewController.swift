//
//  ViewController.swift
//  Apple Store
//
//  Created by Hong Cheng Yen on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttontest: UIButton!
    @IBOutlet weak var buttontest2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        buttontest.self.layer.borderWidth = 1
//        buttontest.self.layer.cornerRadius = 10
//        buttontest.self.layer.borderColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
//        buttontest2.self.layer.borderWidth = 1
//        buttontest2.self.layer.cornerRadius = 10
//        buttontest2.self.layer.borderColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
    }

    @IBAction func test(_ sender: Any) {
        
        buttontest.self.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        buttontest2.self.layer.borderColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
        
    }
    @IBAction func test1(_ sender: Any) {
        buttontest2.self.layer.borderColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        buttontest.self.layer.borderColor = CGColor(red: 0, green: 1, blue: 0, alpha: 1)
    }
    
}

