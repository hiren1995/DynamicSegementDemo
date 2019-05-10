//
//  SecondViewController.swift
//  DynamicSegementDemo
//
//  Created by LogicalWings Mac on 10/08/18.
//  Copyright © 2018 LogicalWings Mac. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let items: [[String]] = [
        ["Apple", "Apricot", "Avocado", "Banana", "Blackberry"],
        ["Blueberry", "Cantaloupe", "Cherry", "Cherimoya", "Clementine", "Coconut", "Cranberry", "Cucumber",
         "Custard apple", "Damson", "Date", "Dragonfruit", "Durian", "Elderberry", "Feijoa",],
        ["Fig", "Grape", "Grapefruit", "Guava", "Udara", "Honeyberry", "Huckleberry", "Jabuticaba"],
        ["Jackfruit", "Juniper berry", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine",],
        ["Mango", "Marionberry"],
        ["Melon", "Nance", "Nectarine", "Olive", "Orange", "Papaya", "Peach"],
        ["Pear", "Pineapple", "Raspberry", "Strawberry", "Tamarillo", "Tamarind", "Tomato", "Ugli fruit", "Yuzu"]
    ]

    @IBOutlet weak var demotable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        demotable.delegate = self
        demotable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items[pageIndex].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = demotable.dequeueReusableCell(withIdentifier: "demoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.lblName.text = items[pageIndex][indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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
