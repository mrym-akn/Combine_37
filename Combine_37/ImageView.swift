//
//  ImageView.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
            VStack{
                ZStack{
                Image("fukidashi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                }
            }
           
        }
    }

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
