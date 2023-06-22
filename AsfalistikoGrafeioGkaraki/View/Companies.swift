//
//  Companies.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI

struct Companies: View {
    @State var companies = ["Allianz","Interamerican","AnyTime"]
    var body: some View {
        NavigationView{
            LinearGradient(colors: [.white,.gray,.white], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)
                .overlay {
                    List(companies,id:\.self){ item in
                        NavigationLink {
                            if item == "Interamerican" {
                                SwiftUIWebView(filePath: URL(string:"https://www.interamerican.gr")!)
                            }
                            if item == "Allianz" {
                                SwiftUIWebView(filePath: URL(string:"https://www.allianz.com.gr/idiotes.html")!)
                            }
                            if item == "AnyTime" {
                                SwiftUIWebView(filePath: URL(string:"https://www.anytime.gr")!)
                            }
                        } label: {
                            Text(item)
                        }
                        
                    }
                }
        }
    }
}

struct Companies_Previews: PreviewProvider {
    static var previews: some View {
        Companies()
    }
}
