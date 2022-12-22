//
//  ContentView.swift
//  SkolaMusic
//
//  Created by Yavuz Güner on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    let mix = MeowMix()
    
    var body: some View {
                
        VStack(spacing: 0) {
            HStack(alignment: .bottom, spacing: 20.0) {
                Thumbnail()
                VStack {
                    MixDescription()
                    Buttons()
                }
            }
            .padding()
            .frame(minHeight: 150,maxHeight: 250)
        Spacer()
            Divider()
                .padding()
            
            //UUID tanımlaması yaptıktan sonra buradan id'yi silebiliriz.
            List(mix.tracks) { track in
                TrackRow(track: track)
            }
            //Add a List of tracks
            
            //Add FeaturedCats View
            FeaturedCats(artists: mix.tracks.map(\.artist))
                .padding(.vertical)
                .background(Color.mint.opacity(0.3))
        }
    }
}

struct FeaturedCats: View {
  let artists: [String]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Featured Cats")
        .font(.title)
        .padding(.leading)
      
      // Add a scrolling horiztonal list of featured artists
        ScrollView(.horizontal) {
            HStack(alignment: .top, spacing: 25){
                ForEach(artists, id: \.self) { artists in
                   FeaturedArtist(artist: artists)
                }
            }.padding(.horizontal)
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let mix = MeowMix()
        
        Thumbnail()
            .padding()
            .previewLayout(.fixed(width: 250, height: 250))
        
            ContentView()
        
        FeaturedCats(artists: mix.tracks.map(\.artist)).previewLayout(.sizeThatFits)
        TrackRow(track: mix.tracks.first!).previewLayout(.sizeThatFits)
        FeaturedArtist(artist: "Keyboard Cats").previewLayout(.sizeThatFits)
        
    }
}


struct TrackRow: View {
  let track: Track
  
  var body: some View {
    HStack {
      track.thumbnail
        .padding()
        .background(track.gradient)
        .cornerRadius(6)
      
      Text(track.title)
      Text(track.artist)
        .foregroundColor(.secondary)
        .lineLimit(1)
        .truncationMode(.tail)
      
      Spacer()
      
      Text("\(track.duration)")
    }
  }
}

struct FeaturedArtist: View {
  let artist: String
  
  var body: some View {
    VStack {
      ZStack {
        Circle()
          .fill([Color.orange, .pink, .purple, .red, .yellow].randomElement()!)
          .scaledToFit()
        
        Image(systemName: "music.mic")
          .resizable()
          .frame(width: 50, height: 50)
          .foregroundColor(.white)
      }
      
      Text(artist)
        .multilineTextAlignment(.center)
        .lineLimit(2)
    }
    .frame(width: 120)
  }
}




