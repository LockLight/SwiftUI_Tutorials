//
//  LandmarkList.swift
//  Landmarks
//
//  Created by locklight on 2019/8/28.
//  Copyright © 2019 LockLight. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      NavigationView{
        List(landmarkData){ landmark in
          NavigationLink(destination: ContentView(landmark: landmark)){
            LandmarkRow(landmark: landmark)
          }
        .navigationBarTitle(Text("Landmarks"))
        }
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
