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
        refresh(minValue: 2)
    }
    //인스턴스 변수
    var currentValue = 0
    @IBOutlet weak var priceLabel: UILabel!
    @IBAction func NewChallenge(_ sender: Any) {
        //NewChallenge에서만 쓰이는 로컬 변수
        let message = "가격은 ₩\(currentValue)입니다."
        let NewAlert = UIAlertController(title: "도전과제", message: message, preferredStyle: .alert)
        let NewAction = UIAlertAction(title: "도전!", style: .default, handler:{action in self.refresh(minValue:2)})
        NewAlert.addAction(NewAction)
        present(NewAlert, animated: true, completion: nil)
        //refresh(minValue: 1)
    }
    var minValue = 1
    
    func refresh(minValue:Int){
        let randomPrice = arc4random_uniform(10000) + UInt32(minValue)
        
        priceLabel.text = "₩ \(currentValue)"
        currentValue = Int(randomPrice)
        
    }
}

