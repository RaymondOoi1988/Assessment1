//
//  webViewController.swift
//  First Assessment Raymond
//
//  Created by RaymondOoi on 11/08/2017.
//  Copyright © 2017 RaymondOoi. All rights reserved.
//

import UIKit

class webViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webViewDisplayOutput: UIWebView!
    
    
    override func viewDidLoad() {
               super.viewDidLoad()

        //        1. set to delegate
        webViewDisplayOutput.delegate = self
        
        loadurl(with: "https://www.google.com")
    }
    
    func loadurl(with string: String) {
        
        guard let url = URL(string: string)
            else {
                print("Invalid UrlString : \(string)")
                return
        }
        let request = URLRequest(url: url)
        webViewDisplayOutput.loadRequest(request)
    }
    
        
    
    
    
}



