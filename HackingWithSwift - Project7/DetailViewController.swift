//
//  DetailViewController.swift
//  HackingWithSwift - Project7
//
//  Created by Patrick Flanagan on 12/20/17.
//  Copyright © 2017 Patrick Flanagan. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
	var webView: WKWebView!
	var detailItem: [String: String]!
	
	override func loadView() {
		webView = WKWebView()
		view = webView
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		guard detailItem != nil else { return }
		
		if let body = detailItem["body"] {
			var html = "<html>"
			html += "<head>"
			html += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
			html += "<style> body { font-size: 150%; } </style>"
			html += "</head>"
			html += "<body>"
			html += body
			html += "</body>"
			html += "</html>"
			webView.loadHTMLString(html, baseURL: nil)
		}
	}
}

	
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


