//
//  KWCircleView.swift
//  testAnimationSwfit
//
//  Created by Lich King on 16/1/3.
//  Copyright © 2016年 Lich King. All rights reserved.
//

import UIKit

class KWCircleView: UIView {
    
    internal var circleColor = UIColor()
    private var offset = Int()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let context:CGContextRef =  UIGraphicsGetCurrentContext()!//获取画笔上下文
        CGContextSetAllowsAntialiasing(context, true) //抗锯齿设置
        CGContextSetFillColorWithColor(context, self.circleColor.CGColor)
        //画圆
        CGContextAddEllipseInRect(context, rect); //画圆
        CGContextDrawPath(context, CGPathDrawingMode.Fill)
    }
    // MARK: -Public Func
    internal func startAnimating(movingOffset offset:Int) {
        self.offset = offset
        self.leftAnimation()
    }
    // MARK: -Private Func
    private func leftAnimation() {
        let animationBlock:(Void)->Void = {Void in
            let originX = Int(self.frame.origin.x) + self.offset
            self.frame = CGRect(x: originX,
                y: 10,
                width: Int(self.frame.size.width),
                height: Int(self.frame.size.height))
        }
        let completionBlock:(Bool)->Void = {Bool in
            self.rightAnimation()
        }
        UIView.animateWithDuration(KW_ANIMATION_DURATION,
            animations: animationBlock,
            completion: completionBlock)
    }
    
    private func rightAnimation() {
        let originX = Int(self.frame.origin.x) - self.offset
        let animationBlock:(Void)->Void = {Void in
            self.frame = CGRect(x: originX,
                y: 10,
                width: Int(self.frame.size.width),
                height: Int(self.frame.size.height))
        }
        let completionBlock:(Bool)->Void = {Bool in
            self.leftAnimation()
        }
        UIView.animateWithDuration(KW_ANIMATION_DURATION,
            animations: animationBlock,
            completion: completionBlock)
    }
}
