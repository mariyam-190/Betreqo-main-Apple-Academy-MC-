//
//  SpaceStoryView.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

import SwiftUI

    struct SpaceStoryView: View {
        @State private var showPopup = false
        var body: some View {
            NavigationStack {
                VStack {
                    ZStack  {
                        VStack {
                            Text("الفضاء")
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
                                    Image("s2")
                                        .padding(.bottom,20)
                                    Button {
                                        // Handle button action
                                    } label: {
                                        NavigationLink(destination: SpaceStory1()) {
                                            Text("النجوم اللامعة")
                                                .font(.custom("Ithra", size:26.0))
                                                .bold()
                                                .background(Color.YellowColor.frame(width: 180, height: 61))
                                             
                                                .foregroundColor(.black)
                                               
                                                
                                        }
                                    }
                                }
                                ZStack(alignment: .bottom){
                                    Image("s3")
                                        .padding(.bottom,20)
                                    Button{}label : {
                                        NavigationLink(destination: SpaceStory2()) {
                                            Text("الشمس المشرقة")
                                                .font(.custom("Ithra", size: 26.0))
                                                .bold()
                                                .background(Color.YellowColor.frame(width: 200, height: 61))
                                            
                                                .foregroundColor(.black)
                                        }
                                    }
                                                              
                                }
                            }
                            HStack {
                                ZStack(alignment: .bottom) {
                                    Image("s1")
                                        .frame(width: 300, height: 300)
                                    Button{}label : {
                                        NavigationLink(destination: SpaceStory2()) {
                                            Text("المجموعة الشمسية")
                                            .bold()
                                            .font(.custom("Ithra", size:26.0))
                                            .background(Color.YellowColor.frame(width: 190, height: 61))
                                            
                                            .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                }
            }
        }

    }
    #Preview {
        SpaceStoryView()
    }


