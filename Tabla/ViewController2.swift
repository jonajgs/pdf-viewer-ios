//
//  ViewController2.swift
//  Tabla
//
//  Created by jonathan gutierrez on 14/09/17.
//  Copyright © 2017 jonathan gutierrez. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet var pdfViewer: UIWebView!
    var pdfReceived:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enableZoom()
        showPdf()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPdf() {
        // get pdf's path
        let pdfPath = URL(
            fileURLWithPath: Bundle.main.path(forResource: pdfReceived!, ofType: "pdf", inDirectory: "PDF")!
        )
        // transform pdf to data
        let pdfData = try? Data(contentsOf: pdfPath)
        // show data in webview
        pdfViewer.load(pdfData!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: pdfPath)
    }
    
    func enableZoom() {
        pdfViewer.scalesPageToFit = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
