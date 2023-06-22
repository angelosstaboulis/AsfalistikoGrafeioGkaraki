//
//  ContactUs.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 20/6/23.
//

import SwiftUI

struct ContactUs: View {
    @State var items = ["Facebook Page","SMS","Phone","Email","Facebook Messenger"]
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    @Environment(\.openURL) var openURL
    var body: some View {
        LinearGradient(colors: [.white,.gray,.white], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.vertical)
            .overlay {
                List(items,id:\.self){listItem in
                    Button {
                        if listItem == "Facebook Page"{
                            openURL(URL(string:"https://www.facebook.com/AsfaleiesGkaraki")!)
                    
                        }else if listItem == "Facebook Messenger"{
                            openURL(URL(string:"https://m.me/AsfaleiesGkaraki")!)
                        }else if listItem == "Phone"{
                            openURL(URL(string:"tel://2531027737")!)
                        }else if listItem == "SMS"{
                            openURL(URL(string:"sms://6981180554")!)
                        }else if listItem == "Email"{
                            openURL(URL(string:"mailto:chgarak@otenet.gr")!)
                        }
                    } label: {
                        Text(listItem)
                    }

                }
                
                
            }
       }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}
