//
//  ViewController.swift
//  SpinningTips
//
//  Created by Alonso Zhang on 16/8/6.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        presentTips([], animated: true, completion: nil)
    }
}