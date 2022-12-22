//
//  Thumbnail.swift
//  SkolaMusic
//
//  Created by Yavuz Güner on 22.12.2022.
//

import SwiftUI

struct Thumbnail:View{
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.accentColor)
                    .aspectRatio(1,contentMode: .fit)
                    .shadow(radius: 10)
                Image(systemName: "play.fill").resizable().frame(width: 50, height: 50, alignment: .center).foregroundColor(.white).opacity(0.20)
            }
            VStack(alignment: .leading){
                Text("NeoSkola")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Mix")
                    .font(.largeTitle)
                Spacer()
            }.foregroundColor(.white)
                .padding()
        }
    }
}


struct Thumbnail_Previews: PreviewProvider {
    static var previews: some View {
        Thumbnail()
    }
}
