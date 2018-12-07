//
//  Entry+CoreDataClass.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/7/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Entry)
public class Entry: NSManagedObject {
    var trip: [Trips]? {
        return self.rawTrips?.array as? [Trips]
    }
    
    convenience init?(destination: String) {
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        guard let context = appdelegate?.persistentContainer.viewContext
            else {
                return nil
        }
        self.init(entity: Entry.entity(), insertInto: context)
        
        self.destination = destination
    }
}
