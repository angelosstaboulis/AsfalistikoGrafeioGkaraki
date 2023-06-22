//
//  MyInteramerican.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI

struct MyInteramerican: View {
    var body: some View {
        VStack{
            SwiftUIWebView(filePath: URL(string:"https://my.interamerican.gr")!).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-150, alignment: .leading)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-150, alignment: .leading)
        .foregroundColor(.gray)
    }
}

struct MyInteramerican_Previews: PreviewProvider {
    static var previews: some View {
        MyInteramerican()
    }
}
