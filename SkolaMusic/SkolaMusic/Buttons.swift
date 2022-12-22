//
//  Buttons.swift
//  SkolaMusic
//
//  Created by Yavuz Güner on 22.12.2022.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        HStack(spacing: 12){
            Button{
                print("Click the play button")
            }label: {
                ButtonView(title: "Play", icon: "play.fill")
            }
            Button{
                print("Click the shuffle button")
            }label: {
                ButtonView(title: "Shuffle", icon: "shuffle")
            }
        }
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
