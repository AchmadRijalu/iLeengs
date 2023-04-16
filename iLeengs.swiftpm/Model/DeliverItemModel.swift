//
//  DeliverItemModel.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 13/04/23.
//

import Foundation
import SwiftUI



struct DeliverItemModel: Identifiable, Equatable {
    let id = UUID()
    let image:String
    var name:String

}

 var ItemData = [
    DeliverItemModel(image: "carrot", name: "Carrot"),
    DeliverItemModel(image: "broccoli", name: "Brocoli"),
    DeliverItemModel(image: "tomato", name: "Tomato"),
    DeliverItemModel(image: "pepper", name: "Peppers"),
    DeliverItemModel(image: "spinach", name: "Spinach"),
    DeliverItemModel(image: "cauliflower", name: "Cauliflower"),
    DeliverItemModel(image: "potato", name: "Potato"),
    DeliverItemModel(image: "ginger", name: "Ginger"),
    DeliverItemModel(image: "turmeric", name: "Turmeric"),
    ]

var listShuffle:[DeliverItemModel] = ItemData.shuffled()
var listCompareShuffle:[DeliverItemModel] = ItemData.shuffled()
