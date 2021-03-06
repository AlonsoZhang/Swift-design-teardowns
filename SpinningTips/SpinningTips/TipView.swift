//
//  TipView.swift
//  SpinningTips
//
//  Created by Alonso Zhang on 16/8/9.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

class TipView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var surmmaryLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var tip: Tip? {
        didSet {
            titleLabel.text = tip?.title ?? "No Title"
            surmmaryLabel.text = tip?.summary ?? "No Summary"
            imageView.image = tip?.image
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
    
    override func alignmentRectForFrame(frame: CGRect) -> CGRect {
        return bounds
    }
}
