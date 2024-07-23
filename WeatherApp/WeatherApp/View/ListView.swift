//
//  ListView.swift
//  WeatherApp
//
//  Created by Udhayakumar on 01/11/22.
//

import SwiftUI

struct ListView: View {
    
    
    var body: some View {
         // NavigationView {
        GeometryReader{ gm in
            //  NavigationView {
            ZStack{
//                BackGroundView(isNight: .constant(true))
            VStack{
                //Spacer()
                CustomNavBar(title: "List View", isPop: true)
               //
               ListCustomView()
            }
            
            }.navigationBarHidden(true)//.navigationBarBackButtonHidden()
            
            
            // }.navigationBarHidden(true)
        //}
    }
        
        // Spacer()
        
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct ListCustomView: View {
    var listDatas : [listData] = listDataDetails.details
    var body: some View {
        List(listDatas) { listDataDetails in
            NavigationLink(destination: ListViewDetails(details: listDataDetails),label: {  HStack {
                Image(listDataDetails.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(6)
                    .padding(.vertical,10)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(listDataDetails.title)
                        .font(.system(size: 18,weight: .semibold))
                    Text(listDataDetails.descriptionStr)
                        .font(.system(size: 16,weight: .medium))
                    //.lineLimit(2)
                    // .minimumScaleFactor(0.5)
                    Text(listDataDetails.date)
                        .font(.system(size: 14,weight: .medium))
                        .foregroundColor(.secondary)
                }
            }
                
            } )
                .listStyle(.sidebar)
            
        }
    }
}
