//
//  ModeViewController.swift
//  SwiftDelegate
//
//  Created by yushuhui on 15/7/10.
//  Copyright (c) 2015年 yushuhui. All rights reserved.
//

import UIKit

class ModeViewController: UIViewController {

    var textF:UITextField?
    var delegate:ModeViewControllerDelagate?
    
    func btnOnClick()
    {
        var str = textF!.text
        println(str)
        self.delegate!.changeLabel(str)
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.blueColor()
        textF = UITextField(frame: CGRectMake(110, 40, 100, 20))
        textF!.backgroundColor = UIColor .greenColor()
        textF!.borderStyle = .RoundedRect
        
        var btn = UIButton(frame: CGRectMake(110, 80, 100, 20))
        btn.backgroundColor = UIColor.greenColor()
        btn.setTitle("close", forState: .Normal)
        
        btn.addTarget(self, action: "btnOnClick", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(textF!)
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
