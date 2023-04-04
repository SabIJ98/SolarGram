//
//  PostContent.swift
//  SolarGram
//
//  Created by Sabrina Jaen on 3/6/23.
//

import SwiftUI

struct PostContent: View {
    var image: String = "profile 1"
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: .infinity, height: 300)
                .aspectRatio(contentMode: .fill)
            
            HStack{
                HStack{
                    Image("like")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Image("comment")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Image("share")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                }
                
                Spacer()
                
                Image("bookmark")
                    .resizable()
                    .frame(width: 20, height: 25)
                
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 12)
            
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
