//
//  ViewController.swift
//  SwiftDelegate
//
//  Created by yushuhui on 15/7/10.
//  Copyright (c) 2015年 yushuhui. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ModeViewControllerDelagate {

    var btn:UIButton?
    var label:UILabel?
    
    
    //
    func changeLabel(newString: String) {
        self.label!.text = newString
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
   
        self.view.backgroundColor = UIColor.grayColor()
        
        label = UILabel()
        label!.frame = CGRectMake(110, 40, 100, 20)
        label!.backgroundColor = UIColor.greenColor()
        label!.text = "hello swift"
        label!.textAlignment = .Center
        
        btn = UIButton(frame: CGRectMake(110, 80, 100, 20))
        btn!.backgroundColor = UIColor.greenColor()
        btn!.setTitle("open", forState: .Normal)
        btn!.addTarget(self, action: "btnOnClick", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn!)
        self.view.addSubview(label!)
        
        
    }
    
    
    func btnOnClick()
    {
        println("Onclick")
        var modeView =  ModeViewController()
        modeView.delegate = self
        
        self.presentViewController(modeView, animated:true, completion: {
            println("OK")
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

