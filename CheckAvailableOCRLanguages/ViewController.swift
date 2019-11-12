//
//  ViewController.swift
//  CheckAvailableOCRLanguages
//
//  Created by Chris Vasselli on 11/12/19.
//  Copyright © 2019 Serpenti Sei. All rights reserved.
//

import UIKit
import Vision

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let accurateLanguages = try! VNRecognizeTextRequest.supportedRecognitionLanguages(for: .accurate, revision: VNRecognizeTextRequestRevision1)

        let fastLanguages = try! VNRecognizeTextRequest.supportedRecognitionLanguages(for: .fast, revision: VNRecognizeTextRequestRevision1)
        
        let text = "Supported languages for accuracy: \(accurateLanguages.joined(separator: ", "))\n\nSupported languages for speed: \(fastLanguages.joined(separator: ", "))"
        label.text = text
    }


}

