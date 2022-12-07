//
//  homeView.swift
//  swiftCoin
//
//  Created by Husain Mamoojee on 2022/12/06.
//

import SwiftUI

struct homeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                //all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
