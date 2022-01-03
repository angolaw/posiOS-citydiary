//
//  LocalStorage.swift
//  citydiary
//
//  Created by Willian S. on 03/01/22.

import CoreData
import UIKit

protocol LocalStorage {}

extension LocalStorage {
    var context: NSManagedObjectContext { (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext }
}
