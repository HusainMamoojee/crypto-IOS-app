//
//  TopMoversView.swift
//  swiftCoin
//
//  Created by Husain Mamoojee on 2022/12/06.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("top movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing: 16){
                    ForEach(viewModel.topCMovingoins) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
