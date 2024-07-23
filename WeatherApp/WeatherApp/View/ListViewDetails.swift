//
//  ListViewDetails.swift
//  WeatherApp
//
//  Created by Udhayakumar on 01/11/22.
//

import SwiftUI

struct ListViewDetails: View {
    var details : listData
    var body: some View { 
       
        GeometryReader{ gm in
            VStack{
                CustomNavBar(title: "List View", isPop: true)
                
                VStack(alignment: .leading,spacing: 20) {
                    Image(details.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                        .padding(.top,10)
                        
                    Text(details.descriptionStr)
                        .font(.system(size: 32,weight: .semibold))
                        .multilineTextAlignment(.leading)
                    Text(details.date)
                        .font(.system(size: 32,weight: .semibold))
                        .foregroundColor(.secondary)
                        
                    Spacer()
                }
               .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 20))
            }
        }.navigationBarHidden(true)
    }
        
    
}

struct ListViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        ListViewDetails(details: listDataDetails.details.first!)
        
    }
}
