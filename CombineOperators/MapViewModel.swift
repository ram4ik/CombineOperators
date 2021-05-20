//
//  MapViewModel.swift
//  CombineOperators
//
//  Created by ramil on 20.05.2021.
//

import Foundation

class MapViewModel: ObservableObject {
    
    @Published var dataToView: [String] = []
    
    func fetchData() {
        let data = ["One", "Two", "Three", "Four", "Five"]
        
        _ = data.publisher
            .map({ (item) in
                return "\(item) ~> " + item.lowercased()
            })
            .sink { [unowned self] (item) in
                dataToView.append(item)
            }
    }
}
