//
//  ViewController.swift
//  Polling Places
//
//  Created by user on 6/5/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPollingPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayOfPollingPlaces[indexPath.row]["NAME"] as? String
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let NewViewController = storyboard?.instantiateViewController(withIdentifier: "PollingPlaceDetailView") as! PollingPlaceDetailView
        
        NewViewController.stringForAddressLabel =  arrayOfPollingPlaces[indexPath.row]["ADDRESS"] as? String
        NewViewController.stringForNameLabel = arrayOfPollingPlaces[indexPath.row]["NAME"] as? String
        
        navigationController?.show(NewViewController, sender: tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Networking().parseJSON()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


