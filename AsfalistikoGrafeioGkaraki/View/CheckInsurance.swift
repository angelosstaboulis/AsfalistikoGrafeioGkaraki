//
//  CheckInsurance.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 19/6/23.
//

import SwiftUI

struct CheckInsurance: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
            SwiftUIWebView(filePath: URL(string: "https://www.hic.gr/hic/Check_ins.aspx")!)
                
        }
    }
}

struct CheckInsurance_Previews: PreviewProvider {
    static var previews: some View {
        CheckInsurance()
    }
}
