//
//  RandomJokeView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI

struct RandomJokeView: View {
    var body: some View {
        VStack{
            ZStack{
                VStack{
                ImageView()
                    //.padding()
                    Spacer()
                }
                VStack{
                    JokeView()
                        .frame(width: 300, height: 500)
                    Spacer()
                }
                VStack{
                    Spacer()
                    Image("teheperoMan")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                }
            }
        }
    }
}

struct RandomJokeView_Previews: PreviewProvider {
    static var previews: some View {
        RandomJokeView()
    }
}
