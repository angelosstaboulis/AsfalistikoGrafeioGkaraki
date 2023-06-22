//
//  Calculator.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 20/6/23.
//

import SwiftUI

struct Calculator: View {
    @State var rate:String
    @State var nper:String
    @State var pv:String
    @State var result:String
    var body: some View {
        LinearGradient(colors: [.white,.gray,.white], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.vertical)
            .overlay {
                ScrollView{
                    VStack{
                        VStack{
                            Image("logo").frame(width: 180, height: 180, alignment: .center)
                        }
                       
                        HStack{
                            TextField("Rate", text: $rate)
                                .cornerRadius(22)
                                .frame(width: 300, height: 40, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                               
                        }.padding(10.0)
                       
                        HStack{
                            TextField("Number of Periods", text: $nper)
                                .cornerRadius(22)
                                .frame(width: 300, height: 40, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }.padding(10.0)
                        
                        HStack{
                            TextField("Present Value", text: $pv)
                                .cornerRadius(22)
                                .frame(width: 300, height: 40, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                        }.padding(10.0)
                        HStack{
                            Button {
                                result = String(format:"%.2f",calculatePMT())
                            } label: {
                                Text("Calculate")
                            }.background {
                                Rectangle()
                                    .frame(width: 300, height: 60, alignment: .center)
                                    .foregroundColor(.gray)
                                    .cornerRadius(22.0)
                                
                            }.padding(30.0)
                        }.padding(20.0)
                        HStack{
                            Text("Result="+result)
                                .frame(width: 300, height: 40, alignment: .center)
                                .background {
                                    Rectangle()
                                        .frame(width: 300, height: 40, alignment: .center)
                                        .foregroundColor(.white)
                                        .cornerRadius(22.0)
                                    
                                }
                                
                        }.padding(10.0)
                    }.frame(width: 900, height: 900, alignment: .center)
                    
                    

                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                
                
                
                
                
            }
        
    }
    func calculatePMT()->Double{
        return ExcelPMT.pmt(rate: Double(rate)!, nper: Double(nper)!, pv: Double(pv)!)
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator(rate: "0.0", nper: "0.0", pv: "0.0",result:"0.0")
    }
}
