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
    
    
    var adress = ""
    
    
    var event : [Event] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tVFE.dataSource = self
        
        // MARK: example
        let event1 = Event(name:" ")
        event = [event1]
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextViewController = segue.destination as! Map_Even_Controller
        
        if segue.identifier == adress
        {
            
        }
        else
        {
            print("that sucks")
        }
    

    }
}
