//
//  Initial Screen.swift
//  Polling Places
//
//  Created by user on 6/11/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class InitialScreenView: UIViewController {
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        Networking().parseJSON()
    }
    
    
}
