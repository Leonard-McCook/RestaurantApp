//
//  GalleryView.swift
//  Restaurant
//
//  Created by Leonard McCook-Carr on 5/7/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(),
                                    GridItem(),
                                    GridItem()]) {
                    ForEach(photoData, id: \.self) { p in
                        
                        Image(p)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 130)
                            .clipped()
                        
                    }
                }
            }
        }.onAppear {
            photoData = dataService.getPhotos()
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
