//
//  Header.swift
//  SolarGram
//
//  Created by Sabrina Jaen on 3/6/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Text("Solargram")
                .font(.system(size: 22))
                .fontWeight(.semibold)
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
                
                Image ("heart")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
                
                Image("messenger")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
