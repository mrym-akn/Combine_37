//
//  JokeView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct JokeView: View {
    @StateObject var viewModel = JokeViewModel()
    var body: some View {
        VStack{
            VStack{
                Text(viewModel.joke)
                    .font(.title2)
                    .padding()
                Button("ランダム親父ギャグ") {
                    viewModel.fetchJoke()
                }
            }
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
