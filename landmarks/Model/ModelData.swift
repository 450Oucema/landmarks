//
//  ModelData.swift
//  landmarks
//
//  Created by Oucema on 20/10/2021.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Peut pas trouver le fichier")
    }
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Peut pas charger le fichier")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Peut pas parser le fichier en json")
    }
}
