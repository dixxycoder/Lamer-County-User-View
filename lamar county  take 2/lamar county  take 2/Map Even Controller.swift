//
//  Map Even Controller.swift
//  lamar county  take 2
//
//  Created by Grant Spraker on 3/23/22.
//

import UIKit

class Map_Even_Controller: UIViewController
{
    
    @IBOutlet weak var nameOfEvent: UILabel!
    
    @IBOutlet weak var dateOfEvent: UILabel!
    
    @IBOutlet weak var adressOfEvent: UIButton!
    
    @IBOutlet weak var timeOfEvent: UILabel!
    
    var adress = "7823 little fox ln"
    var button1 = ""

    override func viewDidLoad()
    {

        super.viewDidLoad()
        
        button1 = "\(adress)"
        adressOfEvent.setTitle(button1, for: .normal)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextViewController = segue.destination as! MapViewController
        
        if segue.identifier == adress
        {
            
        }

    }
    
}
