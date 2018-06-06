//
//  Networking.swift
//  Polling Places
//
//  Created by user on 6/5/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation





class Networking {
    
    
    var arrayOfPollingPlaces = [Array<Any>]()
    
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
                
                //let jsonDecoder = JSONDecoder()
                //let jsonData = try jsonDecoder.decode(Array<Sheet1>.self, from: unwrappedData)
                //USE SERILIZATION BELOW IF DECODER DOESNT WORK
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String:Array<Any>]
                
                let pollingArray = jsonData["Sheet1"]
              
                
                //PRINT OUT ANY DATA COMBINATION HERE
                
                
                
                
                print(pollingArray!)
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
