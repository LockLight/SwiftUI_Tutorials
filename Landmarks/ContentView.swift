//
//  ContentView.swift
//  Landmarks
//
//  Created by locklight on 2019/8/28.
//  Copyright © 2019 LockLight. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var landmark:Landmark
  
    var body: some View {
      VStack {
        MapView(coordinate:landmark.locationCoordinate)
          .frame(height:300)
        
        CircleImage(image:landmark.image)
          .offset(y:-130)
          .padding(.bottom,-130)
        
        VStack(alignment: .leading) {
          Text(landmark.name)
            .font(.title)
          HStack(alignment:.top) {
            Text(landmark.park)
              .font(.subheadline)
            Spacer()
            Text(landmark.state)
              .font(.subheadline)
          }
        }
        .padding()
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
