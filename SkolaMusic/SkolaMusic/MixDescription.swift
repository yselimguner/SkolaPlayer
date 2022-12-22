//
//  MixDescriptions.swift
//  SkolaMusic
//
//  Created by Yavuz Güner on 22.12.2022.
//

import SwiftUI

struct MixDescription: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            VStack(alignment: .leading){
                Text("Meow! Mix")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Text("Apple Music for Ozma")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.accentColor)
                Text("Updated Friday")
                    .font(Font.system(.body).smallCaps())
            }
            
            Text("Once upon a time get meowing with the structes in the building. Also living by only side around here")
        }
    }
}


struct MixDescriptions_Previews: PreviewProvider {
    static var previews: some View {
        MixDescription()
    }
}
