//
//  AnimalStory1.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//


import SwiftUI

struct AnimalStory1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("as3")
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
                    Text("الثعلب المكتشف")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                        Text("في غابة جميلة، عاش ثعلب صغير يُدعى سامر. كان سامر فضوليًا ويحب استكشاف العالم من حوله. في إحدى المرات، قابل طائراً ملوناً وسأله: كيف تحصل على جمالك الرائع؟ . أجاب الطائر بابتسامة وقال: الجمال ليس فقط في الألوان، بل في الطريقة التي نضيء بها العالم من حولنا. فهم سامر أن الجمال يكمن في كيفية نرى ونقدر الأشياء. الحكمة هي أن الجمال ينبع من داخلنا ومن قدرتنا على إضفاء الإشراق والتألق على العالم من حولنا")
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 0, trailing: 50))
                            .multilineTextAlignment(.center)
                            .frame(width:700)
                            .fontWeight(.bold)
                            .font(.custom("Ithra", size:26.0))
                            .lineSpacing(2)
                          
                        
                    HStack {
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa1()) {
                                Text("غابة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa2()) {
                                Text("الألوان")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa3()) {
                                Text("الجمال")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        
                    }.frame(width: 400)
                        .padding(.top,5)//Hs
                        
                    }.position(x: 420, y: 350)
                    
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
    AnimalStory1()
}






