//
//  ViewController.swift
//  MyAlbum
//
//  Created by Klay on 2022/04/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func NewChallenge(_ sender: Any) {
        let NewAlert = UIAlertController(title: "도전과제", message: "할수있다", preferredStyle: .alert)
        let NewAction = UIAlertAction(title: "도전!", style: .default, handler: nil)
        NewAlert.addAction(NewAction)
        present(NewAlert, animated: true, completion: nil)
    }
}

