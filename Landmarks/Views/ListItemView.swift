//
//  ListItemView.swift
//  Landmarks
//
//  Created by Pablo Alvarado on 30/01/24.
//

import SwiftUI

struct ListItemView: View {
    let item: Landmark
    
    var body: some View {
        
        HStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                    .scaledToFit()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15.0)
                    )
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                
                
                HStack {
RecommendationView(item: rom)
                    Spacer()
                }
            }
            
        }
        
    }
}

#Preview {
    ListItemView(item: rom)
        .padding()
}
