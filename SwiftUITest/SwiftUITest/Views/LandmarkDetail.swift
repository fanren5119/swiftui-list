//
//  LandmarkDetail.swift
//  SwiftUITest
//
//  Created by freshera on 2021/6/7.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var entity: Landmark
    
    var body: some View {
        VStack {
            CircleImage(imageName: entity.imageName)
                .padding(.top, 50.0)
            
            VStack(alignment: .leading) {
                Text(entity.name)
                    .font(.title)
                HStack {
                    Text(entity.description)
                        .font(.subheadline)
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
        .navigationTitle("详情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(entity: landmarks[0])
    }
}
