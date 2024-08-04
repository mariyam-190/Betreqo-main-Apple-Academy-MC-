//
//  PlantStoryView.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

    struct PlantStoryView: View {
        var body: some View {
            NavigationStack {
                VStack {
                    ZStack  {
                        VStack {
                            Text("النباتات")
                                .font(.custom("Ithra", size:50))
                                .font(.title).foregroundColor(.LGreenColor)
                               .frame(alignment:.center).kerning(10)
                                .padding(.top, 100)
                            Spacer()
                            Text("أخبرنـي عن مـاذا تريد أن تـقرأ الـيوم؟")                    .font(.custom("Ithra", size:25))
                                .font(.subheadline)
                              .frame(alignment:.center).foregroundColor(.gray)
                       
                            VStack{
                                Image("ice")
                                    .resizable()
                                    .frame(width: 900, height: 300)
                                    .padding(.top, 20)
                                .position(x: 400, y:900)}
                        }
                        
                        VStack {
                            
                            
                            HStack(spacing: 80) {
                                
                                
                                ZStack(alignment: .bottom) {
                                    Image("p1")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: PlantStory1()) {
                                            Text("البذرة الصغيرة")
                                                .font(.custom("Ithra", size:26.0))
                                                .bold()
                                                .background(Color.YellowColor
                                                    .frame(width: 180, height: 61))
                                             
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                                ZStack(alignment: .bottom) {
                                    Image("p2")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: PlantStory2()) {
                                            Text("النخلة الشامخة")
                                                .font(.custom("Ithra", size:26.0))
                                                .bold()
                                                .background(Color.YellowColor.frame(width: 180, height: 61))
                                                .foregroundColor(.black)
                                                
                                        }
                                    }
                                }
                            }
                            HStack {
                                
                                ZStack(alignment: .bottom) {
                                    Image("p3")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: PlantStory3()) {
                                            Text("الوردة الطيبة")
                                                .font(.custom("Ithra", size:26.0))
                                                .bold()
                                                .background(Color.YellowColor.frame(width: 180, height: 61))
                                             
                                                .foregroundColor(.black)
                                               
                                                
                                        }
                                    }
                                }
                                .offset(x: 0, y: 40)
                            }
                        }
                    }
                }
            }
        }

    }
    #Preview {
        PlantStoryView()
    }

