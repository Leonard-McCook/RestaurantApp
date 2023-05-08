//
//  ContentView.swift
//  Restaurant
//
//  Created by Leonard McCook-Carr on 5/6/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                    
            }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("Menu")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Menu")
                    }
                    
                }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
