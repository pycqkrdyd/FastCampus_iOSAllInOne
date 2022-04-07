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
        priceLabel.text = "₩ \(currentValue)"
    
    }
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBAction func NewChallenge(_ sender: Any) {
        let message = "가격은 ₩\(currentValue)입니다."
        let NewAlert = UIAlertController(title: "도전과제", message: message, preferredStyle: .alert)
        let NewAction = UIAlertAction(title: "도전!", style: .default, handler: nil)
        NewAlert.addAction(NewAction)
        present(NewAlert, animated: true, completion: nil)
        
        let randomPrice = arc4random_uniform(10000) + 1
        
        priceLabel.text = "₩ \(currentValue)"
        currentValue = Int(randomPrice)
        
    }
}

