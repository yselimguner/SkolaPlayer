//
//  ButtonView.swift
//  SkolaMusic
//
//  Created by Yavuz Güner on 22.12.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title:String
    let icon:String
    
    var body: some View {
        HStack{
            Spacer()
            Label(title, systemImage: icon)
            Spacer()
        }.padding()
            .background(Color.gray.opacity(0.15))
            .cornerRadius(12)
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Deneme", icon: "play.fill").previewLayout(.sizeThatFits)
    }
}
