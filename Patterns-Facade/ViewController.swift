//
//  ViewController.swift
//  Patterns-Facade
//
//  Created by Ruslan on 20.01.2022.
//

import UIKit

enum ImageSaverError: Error {
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDestinationPath
}

enum ImageType {
    case png
    case jpeg(qualityCompression: CGFloat)
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

