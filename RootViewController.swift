//
//  RootViewController.swift
//  First Assessment Raymond
//
//  Created by RaymondOoi on 11/08/2017.
//  Copyright © 2017 RaymondOoi. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var firstNumberText: UITextField!
    
    @IBOutlet weak var secondNumberText: UITextField!
    
    var inputFirstNumber = 0
    var inputSecondNumber = 0
    var totalCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func calculate(_ sender: Any) {
        //(change from string to int from textview) and (also a constant)
        if let num1 = Int(firstNumberText.text!) {
            // return progress to var inputFirstNumber
            inputFirstNumber = num1
        } else {
            
            
        }
        
        if let num2 = Int(secondNumberText.text!) {
            inputSecondNumber = num2
        } else {
            
        }
        //extract num1,change to int
        //extract num2, change
        
        //ans = num1 + num2
        let ans = inputFirstNumber + inputSecondNumber
        print(ans)
        // if input matchup that answer will proceed to googleWebpage
        if ans == 999 {
           print("ans is 999")
            performSegue(withIdentifier: "showGoogle", sender: self)
        }
        
        isAnsMultipleOf9(ans: ans)
        

    }


        @IBAction func MinusTap(_ sender: Any) {
            
    }
    
    func isAnsMultipleOf9(ans: Int) {
        //for multiply 9 (question)
        if ans % 9 == 0 {
            print("i'm not good in math")
            
            let alert = UIAlertController(title: "Genius",message: "I can got that", preferredStyle: .alert)
            
            let done = UIAlertAction(title: "Go <-", style: .destructive, handler: nil)
            alert.addAction(done)
            
            present(alert,animated:true ,completion: nil)
        }
        
        
        
    }
    







}


