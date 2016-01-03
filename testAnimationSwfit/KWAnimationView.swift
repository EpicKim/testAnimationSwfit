//
//  KWAnimationView.swift
//  testAnimationSwfit
//
//  Created by Lich King on 16/1/1.
//  Copyright © 2016年 Lich King. All rights reserved.
//

import UIKit

let KW_ANIMATION_VIEW_BALL_RADIUS = 10
let KW_ANIMATION_DURATION  = 1.0
let KW_ANIMATION_LENGHT = 100

class KWAnimationView: UIView {
    var blueView = KWCircleView()
    var redView = KWCircleView()
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    // MARK: - Override
    override init(frame: CGRect) {
        super.init(frame: frame)

        blueView.circleColor = UIColor.greenColor()
        blueView.frame = CGRect(x: 20,
                                y: 10,
                                width: KW_ANIMATION_VIEW_BALL_RADIUS,
                                height: KW_ANIMATION_VIEW_BALL_RADIUS)
        self.addSubview(blueView)
        
        redView.circleColor = UIColor.redColor()
        redView.frame = CGRect(x: 120,
            y: 10,
            width: KW_ANIMATION_VIEW_BALL_RADIUS,
            height: KW_ANIMATION_VIEW_BALL_RADIUS)
        self.addSubview(redView)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: -Public
    internal func startAnimating() {
        self.blueView.startAnimating(movingOffset: 50)
        self.redView.startAnimating(movingOffset: -50)
    }
}
