//
//  Trip+CoreDataClass.swift
//  Travelogue
//
//  Created by Taylor Hayes on 12/9/20.
//
//

import UIKit
import CoreData

@objc(Trip)



public class Trip: NSManagedObject {

    convenience init?(name: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Trip.entity(), insertInto: managedContext)
        self.name = name
    }
    
}
