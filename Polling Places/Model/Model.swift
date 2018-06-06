//
//  Model.swift
//  Polling Places
//
//  Created by user on 6/5/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation

struct PollingPlaces{
    
    let address: String
    let name: String
    let precinct: String
    let location: String
    
    
    init(dictionary: [String : AnyObject]) {
        name = dictionary["NAME"] as! String
        precinct = dictionary["PRECINCT"] as! String
        address = dictionary["ADDRESS"] as! String
        location = dictionary["LOCATION"] as! String
        
    }
}



