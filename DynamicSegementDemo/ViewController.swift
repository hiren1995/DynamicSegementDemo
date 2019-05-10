//
//  ViewController.swift
//  DynamicSegementDemo
//
//  Created by LogicalWings Mac on 10/08/18.
//  Copyright © 2018 LogicalWings Mac. All rights reserved.
//

import UIKit
import PageMenu

var pageIndex = 0

class ViewController: UIViewController,CAPSPageMenuDelegate {

    let tabTitles: [String] = [
        "Ferthdod",
        "Ga",
        "Mor'gol",
        "Arthos",
        "Daesarnyëdwyr",
        "Thosthorn",
        "Radclifftowne",
        ]
  
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTabBarStrip(countvalue : tabTitles.count)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadTabBarStrip(countvalue : Int)
    {
        var controllerArray : [UIViewController] = []
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        for i in 0...countvalue - 1
        {
            let pendingView : UIViewController = storyboard.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
            
            pendingView.title = tabTitles[i]
            controllerArray.append(pendingView)
            
        }
        
        var parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        
        //pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        pageMenu =  CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height-170), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view)
        
        
        
    }
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        pageIndex = index
        
        print(pageIndex)
        
        let x = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        
        x.demotable.reloadData()
    }

//    func didMoveToPage(_ controller: UIViewController, index: Int) {
//
//        pageIndex = index
//
//        print(pageMenu)
//
//        let x = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
//
//        x.demotable.reloadData()
//
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

