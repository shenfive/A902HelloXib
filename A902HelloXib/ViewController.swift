//
//  ViewController.swift
//  A902HelloXib
//
//  Created by 申潤五 on 2022/10/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newView = MyView(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
        newView.clipsToBounds = true
        newView.switchAction = {
            print("print from UIViewController")
        }
        self.view.addSubview(newView)
        
      
    }


}

