//
//  ViewController.swift
//  lamar county  take 2
//
//  Created by Grant Spraker on 3/21/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    // the tVFE stands for tableViewForEvents.
    @IBOutlet var tVFE: UITableView!
    
    var event : [Event] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tVFE.dataSource = self
        
        let event1 = Event(name:"boys & girls")
        let event2 = Event(name:"bick")
        event = [event1,event2]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return event.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "events", for: indexPath)
        
        let currentItem = event[indexPath.row]
        
        cell.textLabel?.text = currentItem.name
        
        return cell
    }
    

}

