//
//  PhotoView.swift
//  Restaurant
//
//  Created by Leonard McCook-Carr on 5/15/23.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    
    var body: some View {
        Image(selectedPhoto)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhoto: Binding.constant("gallery2"))
    }
}
