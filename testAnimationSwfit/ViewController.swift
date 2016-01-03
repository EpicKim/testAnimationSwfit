//
//  ViewController.swift
//  testAnimationSwfit
//
//  Created by Lich King on 16/1/1.
//  Copyright © 2016年 Lich King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let animationView=KWAnimationView()
        animationView.backgroundColor = UIColor.yellowColor()
        animationView.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
        self.view.addSubview(animationView)
        
        animationView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

