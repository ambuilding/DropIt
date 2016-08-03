//
//  NamedBezierPathView.swift
//  DropIt
//
//  Created by WangQi on 16/7/17.
//  Copyright © 2016年 WangQi. All rights reserved.
//

import UIKit

class NamedBezierPathView: UIView {

    var bezierPaths = [String : UIBezierPath]() { didSet { setNeedsDisplay() } }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
