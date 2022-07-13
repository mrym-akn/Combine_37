//
//  JokeListView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI

struct BazzWordView: View {
    @StateObject var viewModel = BazzWordViewModel()
    var body: some View {
        VStack{
        Text(viewModel.bazzWord)
            .font(.title2)
            .padding()
        Button("投稿する") {
            viewModel.fetchWord()
        }
        }
    }
}

struct BazzWordView_Previews: PreviewProvider {
    static var previews: some View {
        BazzWordView()
    }
}
