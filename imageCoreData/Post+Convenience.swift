//
//  Post+Convenience.swift
//  imageCoreData
//
//  Created by Nelson Gonzalez on 3/20/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

import CoreData

extension Post {
    @discardableResult convenience init(imageData: Data,
                                        context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.imageData = imageData
    }
}
