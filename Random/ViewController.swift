//
//  ViewController.swift
//  Random
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 SW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number1 : Int = 0
    var number2 : Int = 0
    var sign : Int = 0
    var result : Int = 0
    @IBOutlet weak var number1Lable :UILabel!
    @IBOutlet weak var number2Lable :UILabel!
    @IBOutlet weak var signLable :UILabel!
    @IBOutlet weak var resultLable :UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        
    }
    
    func startNewRound(){
        number1 = Int.random(in: 1...1000)
        number2 = Int.random(in: 1...1000)
        sign = Int.random(in: 1...4)
        updateLable()
       
    }
    
    func updateLable(){
        number1Lable.text = String(number1)
        number2Lable.text = String(number2)
        if(sign == 1){
            signLable.text = String("+")
        }else if (sign == 2){
            signLable.text = String("-")
        }else if (sign == 3){
            signLable.text = String("*")
        }else {
            signLable.text = String("/")
        }
    }
    
    @IBAction func showAlert(){
        let message : String
        if(sign == 1){
            let ans = number1 + number2
            message = "The Anwser is \(ans)"
        }else if (sign == 2){
             let ans = number1 - number2
            message = "The Anwser is \(ans)"
        }else if (sign == 3){
             let ans = number1 * number2
            message = "The Anwser is \(ans)"
        }else {
            let ans = (Double(number1)) / (Double(number2))
            message = "The Anwser is \(format: "%.2f",ans)"
        }
        
        let title = "Hello"
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: {_ in self.startNewRound()})
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
  
}

