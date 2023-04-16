//
//  ListItem.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 12/04/23.
//

import SwiftUI

struct ListItem: View{
    
    var deliverItemModel : DeliverItemModel

    @Binding var selectedItems:String?
    @Binding var selectedItemsData:String?
    @Binding var matchDataIndex: DeliverItemModel?
    var body: some View{
        
        
        VStack{
            Text(deliverItemModel.name).font(.system(size: 20 , weight: .heavy)).foregroundColor(.black)
        }.padding(.all).frame(maxWidth: .infinity, maxHeight: 40).background(  deliverItemModel.name == selectedItems ? Color(.yellow) : .white).cornerRadius(12).shadow(color:  deliverItemModel.name == selectedItems ? .red : Color("Foreground"), radius: 7, x: 1, y: 5).padding(.bottom, 12).onTapGesture {
            withAnimation(.default){
               
                matchDataIndex = deliverItemModel
                print(matchDataIndex!)
                self.selectedItems = deliverItemModel.name
                self.selectedItemsData = self.selectedItems
            }
            
        }
         
    }
}
//
//struct ListItem_Previews: PreviewProvider {
//    let data : DeliverItemModel
//    static var previews: some View {
//        
//        ListItem(deliverItemModel: ItemData[0],  selectedItems: .constant(""), selectedItemsData: .constant(""), matchDataIndex: .constant(data)
//                 )
//    }
//}
