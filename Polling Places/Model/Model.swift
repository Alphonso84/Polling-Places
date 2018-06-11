//
//  Model.swift
//  Polling Places
//
//  Created by user on 6/5/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation

struct PollingPlaces {
    let sheet1: [Sheet1]
}

struct Sheet1 {
    let precinct: Int
    let name, address: String
    let location: Location
}

enum Location {
    case map
}
