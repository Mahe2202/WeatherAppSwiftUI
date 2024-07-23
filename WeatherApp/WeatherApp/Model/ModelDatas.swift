//
//  ModelDatas.swift
//  WeatherApp
//
//  Created by Udhayakumar on 01/11/22.
//

import SwiftUI

struct listData : Identifiable {
    let id = UUID()
    let image :String
    let title: String
    let descriptionStr: String
    let date : String
}

struct listDataDetails {
    
     static let details = [
        listData(image: "Animi1", title: "SwiftUI ListScree list 1", descriptionStr: "SwiftUI: Binding Alamofire Service with ViewModel in SwiftUI", date: "1st Nov 2022"),
        listData(image: "Animi2", title: "SwiftUI ListScree list 2", descriptionStr: "SwiftUI: Binding Alamofire Service with ViewModel in SwiftUI", date: "2st Nov 2022")
//        listData(image: "Animi3", title: "SwiftUI ListScree list 3", descriptionStr: "SwiftUI: Binding Alamofire Service with ViewModel in SwiftUI", date: "3st Nov 2022"),
//        listData(image: "Animi4", title: "SwiftUI ListScree list 4", descriptionStr: "SwiftUI: Binding Alamofire Service with ViewModel in SwiftUI", date: "4st Nov 2022"),
//        listData(image: "Animi5", title: "SwiftUI ListScree list 5", descriptionStr: "SwiftUI: Binding Alamofire Service with ViewModel in SwiftUI", date: "5st Nov 2022")
    ]
    
}
