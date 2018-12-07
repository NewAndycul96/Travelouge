//
//  TripViewController.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/3/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import UIKit

class TripViewController: UIViewController {

    @IBOutlet weak var tripsTableView: UITableView!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .medium
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
    @IBAction func addEntry(_ sender: Any) {
        performSegue(withIdentifier: "showEntry", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
