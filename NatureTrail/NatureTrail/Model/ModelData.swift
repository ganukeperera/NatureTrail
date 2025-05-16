//
//  ModelData.swift
//  NatureTrail
//
//  Created by Ganuke Perera on 2025-05-15.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load(fileName: "landmarkData.json")
    
    static func load<T: Decodable>(fileName: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else {
            fatalError("Couldn't find the \(fileName) in main bundle")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load data from \(file). Error: \(error)")
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(fileName) as \(T.self). Error: \(error)")
        }
        
    }
}


