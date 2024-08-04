//
//  AnimalStoryView.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//


import SwiftUI

struct AnimalStoryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack  {
                    VStack {
                        Text("الحيوانـات")
                            .font(.custom("Ithra", size:50))
                            .font(.title).foregroundColor(.DBlueColor)
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
                                    Image("a1")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: AnimalStory1()) {
                                            Text("الثعـلب المكتشف ")
                                                .font(.custom("Ithra", size:22.0))
                                                .bold()
                                                .background(Color.YellowColor.frame(width: 180, height: 61))
                                            
                                                .foregroundColor(.black)
                                            
                                            
                                        }
                                    }
                                }
                                
                                ZStack(alignment: .bottom) {
                                    Image("a2")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: AnimalStory2()) {
                                            Text("النملة العاملة")
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
                                    Image("a3")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: AnimalStory3()) {
                                            Text("الغزال الطيب")
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
    AnimalStoryView()
}
