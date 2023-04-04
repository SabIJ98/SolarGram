//
//  ContentView.swift
//  SolarGram
//
//  Created by Sabrina Jaen on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            Header()
            
            ScrollView(.vertical, showsIndicators: false){
                
                Divider()
                
                Post()
                
                Post(image:"profile 2")
                
                Post(image:"profile 3")
                
            }
            
            TabBar()
            
        }
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
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
    
    struct PostHeader1: View {
        var body: some View {
            HStack {
                HStack{
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(50)
                    
                    Text("Sabrina Jaen")
                        .font(.caption)
                        .fontWeight(.bold)
                    
                }
                Spacer()
                
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 10)
        }
    }
    
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

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0){
            Divider()
            
            HStack{
                Spacer()
                Image("home")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Spacer()
            }
            .padding(.top, 20)
        }
    }
}
