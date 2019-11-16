//
//  VideoView.swift
//  SwiftUIDataTransfer
//
//  Created by Pavel Bondar on 16.11.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import SwiftUI

struct VideoView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var videoTitle: String
    @State var videoDescription: String
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("Video title", text: $videoTitle)
                TextField("Video description", text: $videoDescription)
                Divider()
                Button(action: {
                    print("13579")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Dismiss this VC")
                })
                Spacer()
            }.padding()
            .navigationBarTitle("SwiftUI")
        }
    }
}
