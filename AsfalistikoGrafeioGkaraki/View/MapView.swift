//
//  MapView.swift
//  AsfalistikoGrafeioGkaraki
//
//  Created by Angelos Staboulis on 20/6/23.
//

import SwiftUI
import MapKit
struct AnnotationItem:Identifiable{
    var id = UUID()
    var title:String
    var coordinates:CLLocationCoordinate2D
}
struct MapView: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.116940, longitude: 25.405910), span: .init(latitudeDelta: 0.0001, longitudeDelta: 0.0001))
    @State var items = [AnnotationItem(title: "Ασφάλειες Γκαράκη", coordinates: CLLocationCoordinate2D(latitude: 41.116940, longitude: 25.405910))]
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, annotationItems: items) { value in
                MapMarker(coordinate:  CLLocationCoordinate2D(latitude: 41.116940, longitude: 25.405910), tint: .red)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
