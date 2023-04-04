//
//  Post.swift
//  SolarGram
//
//  Created by Sabrina Jaen on 3/6/23.
//

import SwiftUI

struct Post: View {
    var image: String = "profile 1"
    var description: String = "Something really great"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader1()
            
            PostContent(image: image)
            
            Text("Something really great")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Divider()
                .padding(.vertical, 12)
            
            Spacer()
        }
    }
}


struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
