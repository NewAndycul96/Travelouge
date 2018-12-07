//
//  Entry+CoreDataProperties.swift
//  Travelouge
//
//  Created by Anand Kulkarni on 12/7/18.
//  Copyright © 2018 Anand Kulkarni. All rights reserved.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var destination: String?
    @NSManaged public var rawTrips: NSOrderedSet?

}

// MARK: Generated accessors for rawTrips
extension Entry {

    @objc(insertObject:inRawTripsAtIndex:)
    @NSManaged public func insertIntoRawTrips(_ value: Trips, at idx: Int)

    @objc(removeObjectFromRawTripsAtIndex:)
    @NSManaged public func removeFromRawTrips(at idx: Int)

    @objc(insertRawTrips:atIndexes:)
    @NSManaged public func insertIntoRawTrips(_ values: [Trips], at indexes: NSIndexSet)

    @objc(removeRawTripsAtIndexes:)
    @NSManaged public func removeFromRawTrips(at indexes: NSIndexSet)

    @objc(replaceObjectInRawTripsAtIndex:withObject:)
    @NSManaged public func replaceRawTrips(at idx: Int, with value: Trips)

    @objc(replaceRawTripsAtIndexes:withRawTrips:)
    @NSManaged public func replaceRawTrips(at indexes: NSIndexSet, with values: [Trips])

    @objc(addRawTripsObject:)
    @NSManaged public func addToRawTrips(_ value: Trips)

    @objc(removeRawTripsObject:)
    @NSManaged public func removeFromRawTrips(_ value: Trips)

    @objc(addRawTrips:)
    @NSManaged public func addToRawTrips(_ values: NSOrderedSet)

    @objc(removeRawTrips:)
    @NSManaged public func removeFromRawTrips(_ values: NSOrderedSet)

}
