//
//  OnBoarding.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 11/04/23.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack{
                    
                    Image("ileengs").resizable().frame(width: 500, height: 500)
                    Spacer()
                    VStack(alignment: .leading){
                        NavigationLink(destination: Scenario()){
                            HStack{
                                Spacer()
                                Image(systemName: "play").font(.system(size: 32))
                                
                                VStack(alignment: .leading){
                                    Text("Play").foregroundColor(.black).fontWeight(.semibold).font(.system(size: 32))
                                    
                                    
                                }
                                
                                Spacer()
                                
                            }.padding(.all).foregroundColor(.black).padding(12).background(.white).cornerRadius(10).shadow(color: Color("Foreground"), radius: 8, x: 0, y: 6)
                        }.padding(.horizontal, 20)
                    }
                    
                    
                    Spacer()
                }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Background"))
            }
        } else {
            // Fallback on earlier versions
            NavigationView{
                EmptyView()
            }
        }
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding().previewInterfaceOrientation(.landscapeLeft)
    }
}
