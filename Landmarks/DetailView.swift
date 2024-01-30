//
//  DetailView.swift
//  Landmarks
//
//  Created by Pablo Alvarado on 29/01/24.
//

import SwiftUI

struct DetailView: View {
    
    //Mark: Stored properties
    let item: Landmark
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .padding(5)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: rom)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: sudburyNickel)
    }
}
