//
//  ChanelView.swift
//  SwiftUIDataTransfer
//
//  Created by Pavel Bondar on 16.11.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import SwiftUI

struct ChanelView: View {
    
    @EnvironmentObject var channelData: ChanelData
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("Channel name", text: $channelData.chanelName)
                Divider()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Dismiss this VC")
                })
                Spacer()
            }.padding()
                .navigationBarTitle("\(channelData.chanelName)")
        }
    }
}

struct ChanelView_Previews: PreviewProvider {
    static var previews: some View {
        ChanelView()
    }
}
