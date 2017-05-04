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
        // Do any additional setup after loading the view.
        self.view.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

        _ = UIButton.init(type: UIButtonType(rawValue: 1)!)

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
