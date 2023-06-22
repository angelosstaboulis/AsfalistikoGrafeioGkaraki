//
//  AboutUs.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI

struct AboutUs: View {
    @State var description =
    """
      Το ασφαλιστικό Γραφείο Γκαράκη λειτουργεί στην
      Κομοτηνή από το 2005.Η ενασχόληση μας με τον
      κλάδο των ασφαλειών ξεκινάει το 1992.
      Το δυναμικό του γραφείου συνιστά και το συγκριτικό
      μας πλεονέκτημα.Προσφέρουμε ένα ευρύ φάσμα
      προιόντων και υπηρεσιών, με στόχο την ικανοποίηση
      των αναγκών σας.
    """
    var body: some View {
        ScrollView{
            VStack{
                Spacer(minLength: 90)
                VStack{
                    Image("logo")
                }.frame(width: 180, height: 180, alignment: .center)
               Spacer(minLength: 30)
                
                ScrollView(.horizontal){
                    Text(description).frame(width: 600, height: 180, alignment: .leading)
                }
               
            }
            ScrollView(.vertical){
                Image("gkarakis1").frame(width: 180, height: 180, alignment: .center)
                Image("gkarakis2").frame(width: 180, height: 180, alignment: .center)
                Image("gkarakis3").frame(width: 180, height: 180, alignment: .center)
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-280, alignment: .center)
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .topLeading)
            .background {
                LinearGradient(colors: [.white,.gray,.white], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
