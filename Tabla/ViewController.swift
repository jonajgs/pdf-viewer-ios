//
//  ViewController.swift
//  Tabla
//
//  Created by jonathan gutierrez on 14/09/17.
//  Copyright © 2017 jonathan gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataContet = ["pdf1", "pdf2", "pdf3"]
    var SEGUE_SCREEN_2 = "pantallaDosSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = dataContet[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowPdfSelected = indexPath.row
            
        self.performSegue(withIdentifier: SEGUE_SCREEN_2, sender: rowPdfSelected)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == SEGUE_SCREEN_2 {
            let rowPdfSelectedReceived = sender as! Int
            let screen2:ViewController2 = segue.destination as! ViewController2
            
            screen2.pdfReceived = dataContet[rowPdfSelectedReceived]
        }
        
    }


}

