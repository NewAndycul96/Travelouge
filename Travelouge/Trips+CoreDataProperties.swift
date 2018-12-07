//
//  Trips+CoreDataProperties.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/7/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//
//

import Foundation
import CoreData


extension Trips {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trips> {
        return NSFetchRequest<Trips>(entityName: "Trips")
    }

    @NSManaged public var rawContent: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var image: NSData?
    @NSManaged public var title: String?
    @NSManaged public var entry: Entry?

}
