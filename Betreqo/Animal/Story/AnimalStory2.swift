
import SwiftUI

struct AnimalStory2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                Image("as2")
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
                    Text("النملة الصبورة")
                        .foregroundColor(.BlueColor)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                       
    
                        Text("كانت هناك نملة تعمل بجد لجمع الطعام وتخزينه للشتاء. رأتها ابنتها النملة الصغيرة وهي تعمل بلا كلل وسألتها: “لماذا تعملين بجد هكذا؟ لما لا نستمتع ونلعب فقط؟” أجابت النملة العاملة بحكمة: “أجمع الطعام وأخزنه لنا حتى لا نجوع في الشتاء، فالجهود المبذولة تحمل ثماراً للمستقبل يا ابنتي!”")
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 0, trailing: 50))
                            .multilineTextAlignment(.center)
                            .frame(width:700)
                            .fontWeight(.bold)
                            .font(.custom("Ithra", size:26.0))
                            .lineSpacing(2)
                          
                        
                    HStack {
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa4()) {
                                Text("نملة")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa5()) {
                                Text("نستمتع")
                                    .font(.custom("Ithra", size:26.0))
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        Spacer()
                        Button {
                        } label: {
                            NavigationLink(destination: Dictationa6()) {
                                Text("الشتاء")
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
    AnimalStory2()
}


