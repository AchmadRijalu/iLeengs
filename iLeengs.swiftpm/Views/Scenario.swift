//
//  Scenario.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 11/04/23.
//

import SwiftUI

struct Scenario: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                NavigationLink(destination: InGame(comparing: false, dataItemFetch0: ItemData[0])){
                    Text("Ke Ingame")
                }
            }
        } else {
            // Fallback on earlier versions
            EmptyView()
        }
    }
}

struct Scenario_Previews: PreviewProvider {
    static var previews: some View {
        Scenario()
    }
}
