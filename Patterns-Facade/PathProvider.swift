//
//  PathProvider.swift
//  Patterns-Facade
//
//  Created by Ruslan on 21.01.2022.
//

import Foundation

class PathProvider {
    public func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        let destinationPath = path.appendingPathComponent(fileName)
        print(destinationPath)
        
        return destinationPath
    }
}
