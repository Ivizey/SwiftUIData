//
//  VideoModel.swift
//  SwiftUIDataTransfer
//
//  Created by Pavel Bondar on 16.11.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import Combine

final class VideoModel: ObservableObject {
    @Published var title: String = "Apples"
    @Published var description: String = "Eating big apples"
}
