//
//  ViewController.swift
//  mini-weibo
//
//  Created by Xufei Li  on 2020/3/23.
//  Copyright © 2020 Xufei Li . All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://localhost:3000/moments?page=1&size=1").responseJSON { response in
            print(response)
        }
    }


}

