//
//  ViewController.swift
//  UITableViewDemo
//
//  Created by Ismail on 2022-04-30.
//

import UIKit

class ViewController: UIViewController {
    
    let countries = [
        "Canada",
        "Senegal",
        "Island",
        "Japan",
        "China",
        "Rwanda"
    ]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        
        return cell
    }
    
    
}



