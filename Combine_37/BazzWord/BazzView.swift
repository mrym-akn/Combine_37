//
//  BazzView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI

struct BazzView: View {
    var body: some View {
        VStack{
            ZStack{
                VStack{
                ImageView()
                    //.padding()
                    Spacer()
                }
                VStack{
                    BazzWordView()
                        .frame(width: 300, height: 500)
                    Spacer()
                }
                VStack{
                    Spacer()
                    Image("smartPhone")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                }
            }
        }
    }
}

struct BazzView_Previews: PreviewProvider {
    static var previews: some View {
        BazzView()
    }
}
