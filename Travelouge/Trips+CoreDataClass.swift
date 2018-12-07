//
//  Trips+CoreDataClass.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/7/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Trips)
public class Trips: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    convenience init?(title: String?, content: String?, date: Date?){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Trips.entity(), insertInto: context)
        
        self.title = title
        self.rawContent = content
        self.date = date
    }
}
