//
//  ContentView.swift
//  CombineOperators
//
//  Created by ramil on 20.05.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            List(viewModel.dataToView, id: \.self) { item in
                Text(item)
            }
        }
        .font(.title)
        .onAppear() {
            viewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
