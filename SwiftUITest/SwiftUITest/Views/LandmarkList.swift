//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by freshera on 2021/6/7.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { entity in
                NavigationLink(
                    destination: LandmarkDetail(entity: entity)) {
                    LandmarkRow(entity: entity)
                }
            }
            .navigationTitle("首页")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
