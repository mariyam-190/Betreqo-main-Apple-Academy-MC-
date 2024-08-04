//
//  SpaceStory3.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

struct SpaceStory3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("ss2")
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
                    Text("المجموعة الشمسية")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                      Text("""
                            في أعماق الفضاء، خلق الله سبحانه نظامًا رائعًا، بدأ بشمسٍ ساطعة في المركز، تليها الكواكب التي تدور حولها بترتيب مذهل.. عطارد الصغير، ثم الزهرة الجميلة، ثم كوكبنا الأرض، يليه المريخ الأحمر، ثم المشتري العملاق، وزحل بحلته الجميلة. وفي المشهد البعيد، أورانوس ونبتون يدوران بترتيب. هذا الإتقان الساحر في الفضاء يذكرنا بحكمة الخالق وجمال الكون.
                            """)
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 0, trailing: 50))
                            .multilineTextAlignment(.center)
                            .frame(width:700)
                            .fontWeight(.bold)
                            .font(.custom("Ithra", size:26.0))
                            .lineSpacing(2)
                          
                        
                    HStack {
                        Button {
                        } label: {
                            NavigationLink(destination: Dictations7()) {
                                Text("أعماق")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictations8()) {
                                Text("الكواكب")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictations9()) {
                                Text("أورانوس")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        
                    }.frame(width: 400)
                        .padding(.top,5)//Hs
                        
                    }.position(x: 420, y: 280)
                    
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
    SpaceStory3()
}







