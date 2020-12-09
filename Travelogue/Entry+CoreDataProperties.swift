//
//  Entry+CoreDataProperties.swift
//  Travelogue
//
//  Created by Taylor Hayes on 12/9/20.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var content: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var image: NSData?
    @NSManaged public var trip: Trip?

}
