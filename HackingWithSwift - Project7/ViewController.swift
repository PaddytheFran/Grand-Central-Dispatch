//
//  ViewController.swift
//  HackingWithSwift - Project7
//
//  Created by Patrick Flanagan on 12/19/17.
//  Copyright © 2017 Patrick Flanagan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

	var petitions = [[String: String]]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Title goes here"
        cell.detailTextLabel?.text = "Subtitle goes here"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
		
		if let url = URL(string : urlString) {
			
			if let data = try? String(contentsOf: url) {
				
				let json = JSON(parseJSON: data)
				if json["metadata"]["responseInfo"]["status"].intValue == 200 {
				
				// we're okay to parse!
				}
			}
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

