//
//  SubMenu.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI

struct SubMenu: View {
    @State var tabbarController:UITabBarController?
    @State var presented = false
    var body: some View {
        NavigationView{
            TabView{
                CheckInsurance().tabItem {
                    Image("car")
                    Text("C.Insurance").foregroundColor(.white)
                }
                MyInteramerican().tabItem {
                    Image("insurance")
                    Text("Interamerican")
                }
                Companies().tabItem {
                    Image("company")
                    Text("Companies")
                }
                Calculator(rate: "", nper: "", pv: "", result: "").tabItem {
                    Image("calculator")
                    Text("Calculator")
                }
                ContentView().tabItem {
                    Image("arrow")
                    Text("Back")
                }.onAppear {
                    presented = true
                }
            }.fullScreenCover(isPresented: $presented, onDismiss: nil, content: {
                ContentView()
            }).navigationBarTitle("Ασφαλιστικό Γραφείο Γκαράκη", displayMode: .inline)
            .introspectTabBarController { controller in
                    UITabBarController().tabBar.isHidden = true
                    tabbarController = UITabBarController()
            }
        }
    }
}

struct SubMenu_Previews: PreviewProvider {
    static var previews: some View {
        SubMenu()
    }
}
