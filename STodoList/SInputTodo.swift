//
//  SInputTodo.swift
//  STodoList
//
//  Created by DoT on 2014. 11. 5..
//  Copyright (c) 2014년 DoT. All rights reserved.
//

import UIKit

class SInputTodo: UIViewController
{
    var btnOK : UIButton!
    var theToDoTitles : NSMutableArray!
    var theToDoContents : NSMutableArray!
    
    //    NSMutableArray* theToDoTitles;
    //    NSMutableArray* theToDoContents;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnOK = UIButton.buttonWithType(UIButtonType.System ) as? UIButton
        btnOK.frame = CGRectMake(0.0, 0.0, 40.0, 30.0)
        btnOK.setTitle("확인", forState: UIControlState.Normal)
        btnOK.addTarget(self, action: "OkTODO:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btnOK)
        // Do any additional setup after loading the view.
    }
    
    func OkTODO(sender:UIButton)
    {
        self.navigationController?.popViewControllerAnimated(true)
        theToDoTitles.addObject("title")
        theToDoTitles += "title"

        theToDoContents.addObject("content")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}

