//
//  TripsDetailViewController.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/3/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        titleLabel.resignFirstResponder()
    }
    
    @IBAction func saveEntry(_ sender: Any) {
        let entry = Entry(destination: titleLabel.text ?? "")
        
        do {
            try entry?.managedObjectContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        } catch {
            print("Could Not Save Entry")
        }
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
