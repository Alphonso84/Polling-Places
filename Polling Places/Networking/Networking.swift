//
//  Networking.swift
//  Polling Places
//
//  Created by user on 6/5/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation


var arrayOfPollingPlaces = [AnyObject]()


class Networking {
    
    
   
    
    func buildURL() ->URL {
        let sheetID = "10lmotsMdxB97YqzuDMfcCcRRhV8lTbOX51awdMlaVT0"
        
        let sheetName = "Sheet1"
        
        let url = URL(string: "https://script.google.com/macros/s/AKfycbygukdW3tt8sCPcFDlkMnMuNu9bH5fpt7bKV50p2bM/exec?id=\(sheetID)&sheet=\(sheetName)")
        
        print(url)
        return url!
    }
    
    
   
    
    func parseJSON() {
        let unwrappedURL = buildURL()
        //URL SESSION
        let session = URLSession.shared
        
        
        let task = session.dataTask(with: (unwrappedURL)) { (data, response, error) in
            print("Start")
            
            guard let unwrappedData = data else {return}
            do {
                
               // let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: .allowFragments) as! NSDictionary
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String:AnyObject]
                
                let pollingArray = jsonData["Sheet1"]
                
                arrayOfPollingPlaces = jsonData["Sheet1"] as! [AnyObject]
                
                
               // self.arrayOfPollingPlaces = jsonData["Sheet1"] as! [PollingPlaces]
                
                //NEED TO WRITE METHOD TO MAP JSON TO POLLINGPLACES MODEL HERE
                
               
                
                //PRINT OUT ANY DATA COMBINATION HERE
                
                
                print(arrayOfPollingPlaces[0]["NAME"])
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
