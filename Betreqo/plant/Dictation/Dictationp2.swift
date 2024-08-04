//
//  Dictationp2.swift
//  Betreqo
//
//  Created by mariyam yasin on 06/08/1445 AH.
//

    import SwiftUI

    struct Linep2 {
        var points = [CGPoint]()
    //  CGPoint: A structure that contains a point in a two-dimensional coordinate system.
        var color: Color = .red
        var lineWidth: Double = 1.0
    }

    struct Dictationp2: View {
        @State private var currentLine = Linep2()
        @State private var lines: [Linep2] = []
        @State private var deletedLines = [Linep2]()
        @State private var selectedColor: Color = .red
        @State private var thickness: Double = 0.0
        @State private var showConfirmation:Bool = false
        
        var body: some View {
            NavigationStack {
                ZStack{
                    Color.bgColor
                        .ignoresSafeArea()
                    
                    VStack
                    {
                        
                        Text("قم برسم الحرف من خلال تمرير القلم أو الاصبع فوق شكل الكلمة")
                            .multilineTextAlignment(.center)
                            .font(.custom("Ithra",size: 30))
                            .foregroundColor(.DBlueColor)
                            .padding(.top, -200)
                            .fontWeight(.bold)
                        
                        Image("bar")
                            .resizable()
                            .frame(width: 400, height: 12)
                            .padding(.top, -100)
                        
                        
                        Canvas { context, size in
                            
                            for line in lines {
                                var path = Path()
                                path.addLines(line.points)
                                context.stroke(path, with: .color(line.color), lineWidth:line.lineWidth)
                            }
                            
                        }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                            .onChanged({ value in
                                let newPoint = value.location
                                currentLine.points.append(newPoint)
                                self.lines.append(currentLine)
                            })
                                .onEnded({ value in
                                    self.currentLine = Linep2(points: [], color: selectedColor, lineWidth: thickness)
                                })
                        )
                        //ecognizing a sequence of touches (or other input)
                        
                        HStack {
                            Slider(value: $thickness, in: 1...20){
                                Text("Thickness")
                            }.frame(maxWidth: 150)
                                .onChange(of: selectedColor) { oldColor, newColor in
                                    currentLine.color = newColor
                                }
                            
                            ColorPickerView(selectedColor: $selectedColor)
                                .onChange(of: selectedColor) { oldColor, newColor in
                                    currentLine.color = newColor
                                }
                        }.padding()
                        
                        
                    }.frame(width: 660, height: 440)
                        .border(Color.white, width: 10)
                        .padding()
                        .background(
                            Image("pd2")
                                .resizable()
                                .frame(width: 400, height: 200)
                        )
                    
                    HStack{
                        VStack (spacing: 20) {
                            
                            NavigationLink(destination:
                                            CelebrationScreen()) {
                                Image(systemName: "arrowshape.backward.fill")
                                    .resizable()
                                    .frame(width: 40.0, height: 20.0)
                                    .shadow(color: .gray, radius: 1, x: 0, y: 4)
                            }
                                            .frame(width: 70.0, height: 70.0)
                                            .foregroundColor(Color.YellowColor)
                                            .background(Color.BlueColor)
                                            .cornerRadius(40)
                                            .shadow(radius: 10)
                                            .padding(.top,30.0)
                            
                        Text("انتهيت")
                                .font(.custom( "Ithra", size: 26))
                                .foregroundColor(Color.gray)
                                .fontWeight(.bold)
                        }
                        
                        
                        Button(action: {
                            showConfirmation = true
                        })
                        { VStack{
                            Image(systemName: "arrow.circlepath")
                                .resizable()
                                .frame(width: 40.0, height: 40.0)
                                .foregroundColor(Color.YellowColor)
                            Text("إعادة المحاولة")
                                .font(.custom("Ithra",size:24))
                                .foregroundColor(Color.BlueColor)
                            
                        }
                        }.foregroundColor(.black)
                            .confirmationDialog(Text("Are you sure you want to delete everything?"), isPresented: $showConfirmation){
                                Button("Delete", role: .destructive){
                                    lines = [Linep2]()
                                    deletedLines = [Linep2]()
                                }
                            }.padding(90)
                            VStack (spacing: 20) {
                                
                                NavigationLink(destination:
                                                Dictationp3()) {
                                    Image(systemName: "arrowshape.forward.fill")
                                        .resizable()
                                        .frame(width: 40.0, height: 20.0)
                                        .shadow(color: .gray, radius: 1, x: 0, y: 4)
                                }
                                                .frame(width: 70.0, height: 70.0)
                                                .foregroundColor(Color.YellowColor)
                                                .background(Color.BlueColor)
                                                .cornerRadius(40)
                                                .shadow(radius: 10)
                                                .padding(.top,30.0)
                                
                                Text(" الكلمة التالية")
                                    .font(.custom( "Ithra", size: 26))
                                    .foregroundColor(Color.DBlueColor)
                                    .fontWeight(.bold)
                            }
                    }.padding(.top, 800)
                    
                }
            }
        }
    }



    struct Dictationp2_Previews: PreviewProvider {
        static var previews: some View {
            Dictationp2()
        }
    }



