//
//  CircleImage.swift
//  Landmarks
//
//  Created by locklight on 2019/8/28.
//  Copyright © 2019 LockLight. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
