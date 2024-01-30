//
//  GalleryView.swift
//  Landmarks
//
//  Created by Pablo Alvarado on 30/01/24.
//

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            LazyVGrid {
                ForEach(allLandmarks) { currentLandmark in
                    
                    NavigationLink {
                        DetailView(item: currentLandmark)
                    } label: {
                        GalleryItemView(item: currentLandmark)
                    }
                    
                }
            }
            .navigationTitle("Landmarks")
        
        }
    }
}

#Preview {
    GalleryView()
}
