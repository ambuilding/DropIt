//
//  DropItViewController.swift
//  DropIt
//
//  Created by WangQi on 16/7/16.
//  Copyright © 2016年 WangQi. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController {
    
    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addDrop(_:))))
            gameView.addGestureRecognizer(UIPanGestureRecognizer(target: gameView, action: #selector(DropItView.grabDrop(_:))))
            gameView.realGravity = true
        }
    }
    
    func addDrop(recognizer: UITapGestureRecognizer) {
        if recognizer.state == .Ended {
            gameView.addDrop()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        gameView.animating = false
    }

}
