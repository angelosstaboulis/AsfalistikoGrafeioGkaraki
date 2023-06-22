//
//  ContentView.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI
import Introspect
struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = .gray
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().tintAdjustmentMode = .normal
    }
    @State var tabbarController:UITabBarController?
    @State var presented = false
    var body: some View {
        NavigationView{
            TabView{
                HomeView().tabItem {
                    Image("home")
                    Text("Home").foregroundColor(.white).font(.system(size: 30.0))
                }
                AboutUs().tabItem {
                    Image("about")
                    Text("About Us")
                }
                ContactUs().tabItem {
                    Image("contact")
                    Text("Contact")
                }
                MapView().tabItem {
                    Image("location")
                    Text("Map")
                }
                SubMenu().tabItem {
                    Image("more")
                    Text("More")
                }.onAppear {
                    presented = true
                }
            }.fullScreenCover(isPresented: $presented, onDismiss: nil, content: {
                SubMenu()
            })
                .navigationBarTitle("Ασφαλιστικό Γραφείο Γκαράκη", displayMode: .inline)
            .introspectTabBarController { controller in
                UITabBarController().tabBar.isHidden = true
                tabbarController = UITabBarController()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
