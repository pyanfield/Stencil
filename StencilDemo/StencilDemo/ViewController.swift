//
//  ViewController.swift
//  StencilDemo
//
//  Created by WeiShuai Han on 11/21/14.
//  Copyright (c) 2014 WeiShuai Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let context = Context(dictionary: [
            "articles": [
                [ "title": "Migrating from OCUnit to XCTest", "author": "Kyle Fuller" ],
                [ "title": "Memory Management with ARC", "author": "Kyle Fuller" ],
            ]
            ])
        
        let template = Template(named: "template.stencil")
        let result = template!.render(context)
        
        switch result {
        case .Error(let error):
            println("There was an error rendering your template (\(error)).")
        case .Success(let string):
            println("\(string)")
        }
    }
}

