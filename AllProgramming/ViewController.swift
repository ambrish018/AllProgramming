//
//  ViewController.swift
//  AllProgramming
//
//  Created by YASH COMPUTERS on 19/05/19.
//  Copyright © 2019 YASH COMPUTERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var arr = [MainModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// git Learing
        
        
        // Do any additional setup after loading the view, typically from a nib.
        arr.append(MainModel(title:"CoreData"));
    }


}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = (arr[indexPath.row]).title
        return cell
        
    }
}
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
