//
//  ViewController.swift
//  NewsApp
//
//  Created by Yuuki Urakawa on 2016/08/28.
//  Copyright © 2016年 Yuuki Urakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu: CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
        var controllerArray: [UIViewController] = []
        
        var controller1: UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "SAMPLE TITLE"
        controllerArray.append(controller1)
        
        var controller2: UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller2.title = "SAMPLE TITLE"
        controllerArray.append(controller2)
        
        var controller3: UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller3.title = "SAMPLE TITLE"
        controllerArray.append(controller3)
        
        var controller4: UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller4.title = "SAMPLE TITLE"
        controllerArray.append(controller4)
        
        var parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .MenuHeight(80.0),
            .MenuItemWidth(90.0),
            .CenterMenuItems(true)
        ]
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMoveToParentViewController(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

