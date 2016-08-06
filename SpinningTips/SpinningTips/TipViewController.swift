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
        if let tipView = createTipView() {
            var center = CGPoint(x: CGRectGetWidth(view.bounds)/2, y: CGRectGetHeight(view.bounds)/2)
            tipView.center = center
            view.addSubview(tipView)
        }
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
}

extension UIViewController {
    func presentTips(tips: [Tip], animated: Bool, completion: (() -> Void)?) {
        let controller = TipViewController()
        controller.modalTransitionStyle = .CrossDissolve
        presentViewController(controller, animated: animated, completion: completion)
    }
}
