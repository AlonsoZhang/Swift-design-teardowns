//
//  TipViewController.swift
//  SpinningTips
//
//  Created by Alonso Zhang on 16/8/6.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

private let kTipViewOffset: CGFloat = 500
private let kTipViewHeight: CGFloat = 400
private let kTipViewWidth: CGFloat  = 300

class TipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTipView() -> TipView? {
        if let view = UINib(nibName: "TipView", bundle: nil).instantiateWithOwner(nil, options: nil).first as! TipView? {
            view.frame = CGRect(x: 0, y: 0, width: kTipViewWidth, height: kTipViewHeight)
            return view
        }
        return nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
