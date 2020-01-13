//
//  ViewController.swift
//  iOSCanvas
//
//  Created by Manuel Carvalho on 13/1/20.
//  Copyright © 2020 Manuel Carvalho. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let canvas = Canvas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(canvas)
        canvas.backgroundColor = .white
        canvas.frame = view.frame
       
    }


}

