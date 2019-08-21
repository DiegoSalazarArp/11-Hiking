//
//  ContentView.swift
//  11-Hiking
//
//  Created by Diego Salazar Arp on 11-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            
        List(hikes)  { hike in
            HikeCell(hike: hike)
            }.navigationBarTitle(Text("Caminatas de Chile"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        NavigationLink(destination: HikeDetail(hike: hike)){
        HStack{
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(18)
            
            VStack (alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
            }
            }
        }
    }
}
