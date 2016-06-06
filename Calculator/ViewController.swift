//
//  ViewController.swift
//  Calculator
//
//  Created by Paul McCartney on 2016/06/06.
//  Copyright © 2016年 shiba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var operationLabel: UILabel!
    var number1: Int = 0
    var number2: Int = 0
    var operation: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        operationLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pushedNum(id: AnyObject) {
        number1 = id.tag
        resultLabel.text = String(number1)
    }
    
    @IBAction func pushedZero() {
        number1 = number1 * 10
        resultLabel.text = String(number1)
    }
    
    @IBAction func pushedOperator(id: AnyObject) {
        operation = id.tag
        number2 = number1
        number1 = 0
        switch operation {
        case 1:
            //puls
            operationLabel.text = "+"
            return
        case 2:
            //minus
            operationLabel.text = "-"
            return
        case 3:
            //multiply
            operationLabel.text = "×"
            return
        case 4:
            //divide
            operationLabel.text = "÷"
            return
        default:
            return
        }

    }
    
    @IBAction func pushedEqual() {
        switch operation {
        case 1:
            //puls
            resultLabel.text = String(number1 + number2)
            number2 = number1 + number2
            return
        case 2:
            //minus
            resultLabel.text = String(number2 - number1)
            number2 = number2 - number1
            return
        case 3:
            //multiply
            resultLabel.text = String(number1 * number2)
            number2 = number1 * number2
            return
        case 4:
            //divide
            resultLabel.text = String(number2 / number1)
            number2 = number2 / number1
            return
        default:
            return
        }
    }
    
    @IBAction func pushedAC() {
        resultLabel.text = "0"
        operationLabel.text = ""
        number1 = 0
        number2 = 0
        operation = 0
    }
}

