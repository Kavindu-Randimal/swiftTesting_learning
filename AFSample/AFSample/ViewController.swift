//
//  ViewController.swift
//  AFSample
//
//  Created by Randimal Geeganage on 10/5/20.
//  Copyright © 2020 com.sample. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://reqres.in/api/users/8", method: .get)
            .responseJSON { response in
                switch (response.result) {
                case .success( _):
                    do {
                        let res = try JSONDecoder().decode(GetResonse.self, from: response.data!)
                        print("data avatar", res.Data?.avatar)
                        print("data email ",res.Data?.email)
                        print("first_name",res.Data?.first_name)
                        
                    } catch let error as NSError {
                        print("Failed to load: \(error.localizedDescription)")
                    }
                    
                case .failure(let error):
                    print("Request error: \(error.localizedDescription)")
                }
        }
    }
}

