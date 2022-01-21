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
    case jpeg(compressionQuality: CGFloat)
}

class ViewController: UIViewController {
    
    let imageSaver = ImageSaverFacade()
    let image = UIImage(named: "image")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try imageSaver.save(image: image, type: .png, fileName: "image", overwriting: true)
        } catch {
            print(error)
        }
    }
}

