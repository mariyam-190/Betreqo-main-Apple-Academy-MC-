//
//  SpaceStory1.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//


import SwiftUI

struct SpaceStory1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("ss1")
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
                    Text("النجوم اللامعة")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                      Text("""
                            سارة تحب النظر إلى السماء ليلًا، وتتعجب من منظر النجوم كثيرًا، راحت تسأل أمها: “ لماذا خلق اللهه النجوم يا أمي؟ وماذا تفعل هناك في السماء؟”
                            أجابتها أمها: “يا أبنتي خلق الله النجوم لحكمٍ كثيرة، منها زينة للسماء، لتضفي عليها جمالًا ورونقًا. كما أنها تدل الناس على طريقهم في الظلمات.”
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
                            NavigationLink(destination: Dictations2()) {
                                Text("السماء")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictations1()) {
                                Text("النجوم")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictations3()) {
                                Text("الناس")
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
    SpaceStory1()
}






