//
//  ViewController.swift
//  Test
//
//  Created by Pete Morris on 19/11/2014.
//  Copyright (c) 2014 Mumsnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dataLoader = MumsnetDataLoader()
        println(dataLoader)
        dataLoader.allCategories { (categoriesArray) -> Void in
            if let categories = categoriesArray {
                println(categories.count)
            } else {
                println("failed")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

