//
//  CompareItem.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 15/04/23.
//

import SwiftUI

struct CompareItem: View {
    
    let compareItem : DeliverItemModel
    @Binding var isComparing : Bool?
    @Binding var comparedData: String?
    
    //for already matched
    @Binding var matchDataIndex : DeliverItemModel?
    
    @Binding var isSame : Bool?
    var body: some View {
        VStack{
            Image(compareItem.image).resizable().frame(width: 80, height: 80)
            if !isComparing!{
                Text(compareItem.name).font(.system(size: 20, weight: .heavy))
            }
            else{
                if isSame!{
                    withAnimation(.easeOut){
                        Text(compareItem.name).font(.system(size: 20, weight: .heavy))
                    }
                    
                    
                }
                
                else{
                    withAnimation(.easeIn){
                        Text("?").font(.system(size: 26, weight: .heavy))
                    }
                    
                }
                
            }
            
        }.padding(.all).background(.white).cornerRadius(24).padding(EdgeInsets(top: 100, leading: 99, bottom: 0, trailing: 100)).onTapGesture {
            
            print("hasil : \(self.comparedData!)")
            if compareItem.name == comparedData!{
                withAnimation(.easeOut){
                    
                    if let itemIndex = listShuffle.firstIndex(of: matchDataIndex!) {
                        listShuffle.remove(at: itemIndex)
                    }
                }
                self.isSame = true
                print(ItemData.count)
            }
            
            
            
            
        }
        
    }
}



//    struct CompareItem_Previews: PreviewProvider {
//        static var previews: some View {
//            CompareItem(compareItem: ItemData[1])
//        }
//    }

