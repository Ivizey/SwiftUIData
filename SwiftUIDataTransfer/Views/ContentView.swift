//
//  ContentView.swift
//  SwiftUIDataTransfer
//
//  Created by Pavel Bondar on 16.11.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingVideoView = false
    
    @ObservedObject var videoData = VideoModel()
    
    @EnvironmentObject var channelData: ChanelData
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                GeometryReader { geometry in
                    HStack(spacing: 20) {
                        NavigationLink(destination: ChanelView(), label: {
                            Text("Edit chanel")
                            }).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).background(Color.init(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))).cornerRadius(10)
                        Button(action: {
                            self.showingVideoView.toggle()
                        }, label: {
                            Text("Edit content")
                        }).sheet(isPresented: self.$showingVideoView, content: {
                            VideoView(videoTitle: self.$videoData.title, videoDescription: self.$videoData.description).environmentObject(self.channelData)
                        }).frame(width: geometry.size.width/2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).background(Color.init(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))).cornerRadius(10)
                    }
                    }.padding().frame(height: 50)
                Divider()
                HStack {
                    Image("apple").resizable().frame(width: 120, height: 120)
                    VStack(alignment: .leading) {
                        Text("Title: \(videoData.title)").font(.title)
                        Text("Description: \(videoData.description)").font(.subheadline).foregroundColor(.gray)
                    }
                }
                Spacer()
                }.padding()
                .navigationBarTitle("\(channelData.chanelName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
