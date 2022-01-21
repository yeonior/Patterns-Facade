//
//  ImageSaverFacade.swift
//  Patterns-Facade
//
//  Created by Ruslan on 21.01.2022.
//

import Foundation
import UIKit

class ImageSaverFacade {
    private let dataProvider = ImageDataProvider()
    private let pathProvider = PathProvider()
    
    public func save(image: UIImage, type: ImageType, fileName: String, overwriting: Bool) throws {
        let data = try dataProvider.data(from: image, type: type)
        let path = try pathProvider.createDestinationPath(fileName: fileName)
        let writingOptions: Data.WritingOptions = overwriting ? .atomic : .withoutOverwriting
        try data.write(to: path, options: writingOptions)
    }
}
