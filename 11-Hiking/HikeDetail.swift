//
//  HikeDetail.swift
//  11-Hiking
//
//  Created by Diego Salazar Arp on 11-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State var zoomed = false
    
    var body: some View{
        VStack{
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)){
                        self.zoomed.toggle()
                        }
            }
            Text(hike.name)
                .font(.largeTitle)
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

#if DEBUG
struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all()[0])
    }
}
#endif
