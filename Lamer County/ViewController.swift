//
//  ViewController.swift
//  Lamer County
//
//  Created by Grant Spraker on 1/28/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource
{
    @IBOutlet weak var eventTableView: UITableView!

    var event : [Events] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        eventTableView.dataSource = self
        
        let event1 = Events(name:"boys & girls")
        let event2 = Events(name:"Bike")
        event = [event1,event2]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return event.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Calendar", for: indexPath)
        let currentItem = event[indexPath.row]
        cell.textLabel?.text = currentItem.name
        return cell
    }
    

    
    
}
