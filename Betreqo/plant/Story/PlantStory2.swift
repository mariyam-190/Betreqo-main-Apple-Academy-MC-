//
//  PlantStory2.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//



import SwiftUI

struct PlantStory2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("ps2")
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
                    Text("النخلة الشامخة")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                        Text("في حديقة المنزل، رأى محمد نخلة شامخة، فسأل والده: “لماذا تبقى النخلة واقفة رغم العواصف؟”، أجاب الأب” “لأنها تنحني وتتكيف مع الظروف، فتبقى صامدة، قال محمد: “أريد أن أكون مثل هذه النخلة! أجاب الأب: “عليك أن تكون مستعدًا للانحناء قليلًا عندما تواجه الصعوبات، حتى تتمكن من النهوض أقوى من ذي قبل.”")
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 0, trailing: 50))
                            .multilineTextAlignment(.center)
                            .frame(width:700)
                            .fontWeight(.bold)
                            .font(.custom("Ithra", size:26.0))
                            .lineSpacing(2)
                          
                        
                    HStack {
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp4()) {
                                Text("حديقة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp5()) {
                                Text("النخلة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationp6()) {
                                Text("قليلا")
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
    PlantStory2()
}







