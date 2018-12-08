//
//  TripViewController.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/3/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//

import UIKit
import CoreData


class TripViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var tripsTableView: UITableView!
    
    var newtrips: [Trips] = []
    
    let dateFormatter = DateFormatter()
    
    var trip: Trips?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .medium
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        guard let appdelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appdelegate.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Trips> = Trips.fetchRequest()
        
        do {
            newtrips = try managedContext.fetch(fetchRequest)
            
            tripsTableView.reloadData()
        } catch {
            print("Could not fetch")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? TripViewController,
            let selectedRow = self.tripsTableView.indexPathForSelectedRow?.row else {
            return
        }
        
        destination.trip = newtrips[selectedRow]
    }
    
    @IBAction func addtrip(_ sender: Any) {
        performSegue(withIdentifier: "showEntry", sender: self)
    }
    
    func deleteTrip(at indexPath: IndexPath) {
        let trip = Trips[IndexPath.row]
        
        guard let managedContext = trip.managedObjectsContext else {
            return
        }
        
        managedContext.delete(trip)
        
        do {
            try managedContext.save()
            
            trip.remove(at: indexPath.row)
            
            tripsTableView.deleteRows(at: [indexPath], with: .automatic)
        } catch {
            print("could not delete")
            
            tripsTableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
}
