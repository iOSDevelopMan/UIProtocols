//
//  ViewController.swift
//  UIProtocols
//
//  Created by Aliaksei Kachura on 12/21/2023.
//  Copyright (c) 2023 Aliaksei Kachura. All rights reserved.
//

import UIKit
import UIProtocols

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let testObject = TestClass()
        testObject.doSomething()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

