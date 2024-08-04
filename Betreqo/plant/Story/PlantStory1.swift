//
//  PlantStory1.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

struct PlantStory1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("ps1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 328.57, height: 262)
                    .padding(.bottom,850)
                
                Rectangle()
                    .fill(Color.LYellowColor)
                    .frame(width: 685, height: 630)
                    .border(Color.white, width: 10)
                    .position(x: 420, y: 630)
                  
                
                
                VStack {
                    Spacer()
                    Text("البذرة الطيبة")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                        Text("في قلب الغابة، نمت بذرة صغيرة، كانت البذرة تحلم بالوصول إلى ضوء الشمس، لكنها كانت محاطة بالأشجار الكثيفة، مرت الأيام والأسابيع، وبدأت البذرة تنمو ولم تستسلم للعقبات، استطاعت البذرة الصغيرة بعد صبر وعزيمة أن تخترق طبقة الظلام، خرجت إلى النور لتكشف عن زهرة جميلة بداخلها.")
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 0, trailing: 50))
                            .multilineTextAlignment(.center)
                            .frame(width:700)
                            .fontWeight(.bold)
                            .font(.custom("Ithra", size:26.0))
                            .lineSpacing(2)
                          
                        
                    HStack {
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp1()) {
                                Text("بذرة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp2()) {
                                Text("شمس")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp3()) {
                                Text("زهرة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        
                    }.frame(width: 400)
                        .padding(.top,5)//Hs
                        
                    }.position(x: 420, y: 250)
                    
                HStack{
                    Image("alert")
                        .frame(width: 7, height: 7)
                        .padding(.trailing,30)
                    Text(" قم بالنقر على الكلمة حتى يتم إملائها عليك ")
                        .font(.custom( "Ithra", size: 18))
                        .fontWeight(.bold)
                       
                }.position(x: 420, y:1010)
                   
                    
                }
                
            }
            
        }
        
    }


#Preview {
    PlantStory1()
}






