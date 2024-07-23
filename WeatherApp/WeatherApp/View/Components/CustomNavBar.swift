//
//  CustomNavBar.swift
//  WeatherApp
//
//  Created by Udhayakumar on 02/11/22.
//

import SwiftUI

struct CustomNavBar: View {
    var title : String?
    var isPop : Bool?
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
//        ZStack {
//            Color.clear
//                .background(.ultraThinMaterial)
//                .blur(radius: 10)
            
            HStack {
                Button(action: {
                    if  self.isPop == true { self.mode.wrappedValue.dismiss() }
                    
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.white)
                        //.renderingMode(.original)
                        //.resizable()
//                        .foregroundColor(Color.black)
//                        .scaledToFit()
                        .frame(width: 60, height: 40)
                    
                })
              //  Spacer()
               
                
               // .background(Color.blue)
                //.padding(.leading,20)
                
                Text(title ?? "")
                    .font(.largeTitle.weight(.semibold))
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
            //.padding()
            .font(.headline)
            .frame(height:80)
            .background(.green)
           
            .frame(alignment: .top)
            
        }
        
        
       // .ignoresSafeArea()
    //}
    
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
      
        CustomNavBar(title: "Title")
       
    }
}
