//
//  SwiftViewController.swift
//  URLTest
//
//  Created by Black_Chen_ on 2017/4/19.
//  Copyright © 2017年 Black_Chen_. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red;
        // Do any additional setup after loading the view.

        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "返回", style: UIBarButtonItemStyle(rawValue: 0)!, target: self, action: NSSelectorFromString("back"))

        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "下页", style: UIBarButtonItemStyle(rawValue: 0)!, target: self, action: NSSelectorFromString("back1"))
    }

    func back1() {
        let vc = ViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)

    }

    func back() {

        self.navigationController?.dismiss(animated: true, completion: { 

        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
