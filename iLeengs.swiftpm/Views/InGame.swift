//
//  InGame.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 11/04/23.
//

import SwiftUI
import AVFoundation



struct InGame: View {
    

    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var countDownTimer = 8
    @State var countDownRunning = true
    @State var audioPlayer: AVAudioPlayer!
    
    @State var checkTimer:Bool = false
    
    
    @State var showingPopup = false
    
    
    //itemcompare
    @State var comparing:Bool?
    @State var matchDataIndex:DeliverItemModel?
    
    
    //itemlist
    @State var selection:String? = ""
    @State var selectionItem:String? = ""
    
    @State var dataItemFetch0:DeliverItemModel = ItemData[0]
    @State var dataItemFetch1:DeliverItemModel = ItemData[1]
    @State var dataItemFetch2:DeliverItemModel = ItemData[2]
    @State var dataItemFetch3:DeliverItemModel = ItemData[3]
    @State var dataItemFetch4:DeliverItemModel = ItemData[4]
    @State var dataItemFetch5:DeliverItemModel = ItemData[5]
    @State var dataItemFetch6:DeliverItemModel = ItemData[6]
    @State var dataItemFetch7:DeliverItemModel = ItemData[7]
    @State var dataItemFetch8:DeliverItemModel = ItemData[8]
    
    @State var dataCompared0: Bool? = false
    @State var dataCompared1: Bool? = false
    @State var dataCompared2: Bool? = false
    @State var dataCompared3: Bool? = false
    @State var dataCompared4: Bool? = false
    @State var dataCompared5: Bool? = false
    @State var dataCompared6: Bool? = false
    @State var dataCompared7: Bool? = false
    @State var dataCompared8: Bool? = false
    
    
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack {
                    VStack{
                        HStack{
                            Image("map1").resizable().frame(maxWidth: .infinity , maxHeight: .infinity)
                            Spacer()
                        }
                        Spacer()
                        
                    }.background(Color("Background"))
                    
                    //Kotak Kotak
                    Grid{
                        
                        HStack{
                            GridRow{
                                
                                CompareItem(compareItem: dataItemFetch0, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex, isSame: $dataCompared0
                                ).onAppear(){
                                    self.dataItemFetch0 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                                CompareItem(compareItem: dataItemFetch1, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex, isSame: $dataCompared1).onAppear(){
                                    
                                    self.dataItemFetch1 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                                CompareItem(compareItem: dataItemFetch2, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex, isSame: $dataCompared2).onAppear(){
                                    
                                    self.dataItemFetch2 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                                
                                
                                
                                
                            }
                            Spacer()
                        }
                        HStack{
                            GridRow{
                                
                                CompareItem(compareItem: dataItemFetch3, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex , isSame: $dataCompared3).onAppear(){
                                    self.dataItemFetch3 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    //                                    print(listCompareShuffle.count)
                                    
                                }
                                
                                
                                CompareItem(compareItem: dataItemFetch4, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex, isSame: $dataCompared4).onAppear(){
                                    
                                    self.dataItemFetch4 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                    
                                }
                                
                                CompareItem(compareItem: dataItemFetch5, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex, isSame: $dataCompared5).onAppear(){
                                    self.dataItemFetch5 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                    
                                }
                                
                            }
                            Spacer()
                        }
                        HStack{
                            GridRow{
                                
                                CompareItem(compareItem: dataItemFetch6, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex , isSame: $dataCompared6).onAppear(){
                                    self.dataItemFetch6 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                                
                                CompareItem(compareItem: dataItemFetch7, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex , isSame: $dataCompared7).onAppear(){
                                    self.dataItemFetch7 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                                
                                CompareItem(compareItem: dataItemFetch8, isComparing: $comparing, comparedData: $selectionItem, matchDataIndex: $matchDataIndex , isSame: $dataCompared8).onAppear(){
                                    
                                    self.dataItemFetch8 = listCompareShuffle.last!
                                    listCompareShuffle.removeLast()
                                    
                                }
                                
                            }
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    
                    if dataCompared0 == true && dataCompared1 == true && dataCompared2 == true && dataCompared3 == true && dataCompared4 == true && dataCompared5 == true && dataCompared6 == true && dataCompared7 == true && dataCompared8 == true{
                        
                        Text("COMPLETED YEYY").onAppear(){
                            countDownRunning = false
                        }
                    }
                    Spacer()
                    
                    
                    VStack{
                        HStack{
                            Spacer()
                            VStack(alignment: .center){
                                Image(systemName: "timer").font(.system(size: 40, weight: .bold)).foregroundColor(.white).padding(.bottom, 4 )
                                
                                Text("\(countDownTimer)").onReceive(timer){
                                    _ in
                                    if countDownTimer > 0 && countDownRunning{
                                        countDownTimer -= 1
                                    }
                                    else{
                                        countDownRunning = false
                                    }
                                }.fontWeight(.heavy).font(.system(size: 24)).multilineTextAlignment(.center)
                                
                            }.padding(.all).frame(width: 200 ).background(.blue).cornerRadius(20)
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 12))
                        
                        HStack{
                            Spacer()
                            VStack{
                                if countDownTimer != 0 && !comparing!{
                                    Text("Remember it!!").fontWeight(.heavy).foregroundColor(.black).font(.system(size: 24)).onAppear(){
                                        
                                        playSounds("clock.wav")
                                    }
                                }
                                else if countDownTimer == 0 || comparing!{
                                    Text("Deliver it!! 🥸").fontWeight(.heavy).foregroundColor(.black).font(.system(size: 24)).background(.white)
                                    
                                        .onAppear(){
                                            self.comparing = true
                                            countDownTimer = 50
                                            countDownRunning = true
                                            print(checkTimer)
                                            audioPlayer.stop()
                                            playSounds("ding.wav")
                                            
                                        }
                                }
                                
                            }.padding(.all).frame(width: 200 ).background(.white).cornerRadius(12)
                            
                        }.padding(.trailing, 12)
                        Spacer()
                        HStack{
                            Spacer()
                            VStack{
                                ForEach(listShuffle.indices, id: \.self) { index in
                                    let item = listShuffle[index]
                                    HStack{
                                        ListItem(deliverItemModel: item, selectedItems: $selection, selectedItemsData: $selectionItem, matchDataIndex: $matchDataIndex)
                                    }
                                    
                                    
                                }
                                
                                //                                ListItem(deliverItemModel: item, selectedItems: $selection, selectedItemsData: $selectionItem, matchData: $matchData)
                                
                                Spacer()
                            }.padding(.all).frame(width: 200).background(Color("Primary")).border(.indigo, width: 10).cornerRadius(20)
                        }.padding(.trailing, 12)
                        
                    }
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.cyan)
                    .navigationBarBackButtonHidden()
            }
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    
    func playSounds(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        
        if(audioPlayer.isPlaying){
            audioPlayer.stop()
            checkTimer = true
        }
        else{
            audioPlayer.play()
        }
        
    }
    
}

struct InGame_Previews: PreviewProvider {
    static var previews: some View {
        InGame(dataItemFetch0: ItemData[0] ).previewInterfaceOrientation(.landscapeLeft)
    }
}
