//
//  LandmarkRow.swift
//  SwiftUITest
//
//  Created by freshera on 2021/6/7.
//

import SwiftUI

struct LandmarkRow: View {
    
    var entity: Landmark
    
    var body: some View {
        HStack {
            Image(entity.imageName).resizable().frame(width: 60, height: 60)
            Text(entity.name).font(.custom("", size: 16))
            Spacer()
        }.padding()
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(entity: landmarks[0])
            LandmarkRow(entity: landmarks[2])
        }
        .previewLayout(.fixed(width: 375, height: 70))
    }
}
