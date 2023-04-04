//
//  SwiftUIView.swift
//  SolarGram
//
//  Created by Sabrina Jaen on 3/6/23.
//

import SwiftUI

struct ProfileView: View {
    let columns = [GridItem(.flexible()),               GridItem(.flexible()),
                   GridItem(.flexible())]
    
    let imageDimension = UIScreen.main.bounds.width / 3
    
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeader()
        
        LazyVGrid(columns: columns, spacing: 1){
            ForEach(0 ... 15, id: \.self) { index in
                Image("profile 1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .border(Color.white)
                    .clipped()
                    }
                }
            }
            
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileHeader: View {
    var body: some View {
        VStack{
            Image("profile")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
                .padding(.top, 15)
            Spacer()
            Text("Sabrina Jaen")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 15)
            Divider()
        }
    }
}
