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
    var number1: Int = 0
    var number2: Int = 0
    var operation: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pushedNum(id: AnyObject) {
        resultLabel.text = String(id.tag)
    }
}

