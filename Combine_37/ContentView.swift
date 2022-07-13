//
//  ContentView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
            ZStack{
                RandomJokeView()
                VStack{
                    Spacer()
                    NavigationLink{
                        BazzView()
                    } label: {
                        Text("バズるワードを投稿する！")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 40)
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
