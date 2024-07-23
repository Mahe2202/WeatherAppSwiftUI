//
//  ContentView.swift
//  WeatherApp
//
//  Created by Udhayakumar on 31/10/22.
//

import SwiftUI

struct WeatherScreenView: View {
    
    @State private var isNight = false
    var body: some View {
        NavigationView {
            ZStack{
                BackGroundView(isNight: $isNight)
                VStack {
                    WeatherHighlightView(cityname: "India, Tamil Nadu", weatherImg: "cloud.sun.fill", tempature: 72)
                    HStack(spacing: 30) {
                        WeatherDaysView(daysInWeek: "TUE", weatherImage: "cloud.sun.fill", tempature: 74)
                        
                        WeatherDaysView(daysInWeek: "WED", weatherImage: "sunset.fill", tempature: 55)
                        
                        WeatherDaysView(daysInWeek: "TUE", weatherImage: "sun.max.fill", tempature: 80)
                        
                        WeatherDaysView(daysInWeek: "FRI", weatherImage: "cloud.bolt.rain.fill", tempature: 60)
                        
                        WeatherDaysView(daysInWeek: "SAT", weatherImage: "cloud.sun.rain.fill", tempature: 62)
                    }
                    Spacer()
                    VStack(spacing: 20) {
                        Button {
                            isNight.toggle()
                        } label: {
                            WeatherButtonView(title: isNight ?  "Change Light Mode" : "Change Dark Mode", textColor: .blue, backgroundColor: .white)
                        }
                        NavigationLink(destination: ListView(),
                         label: {
                            NextViewButton(title: "Go To List View", textColor: .blue, backgroundColor: .white)
                        })
                    }                             
                    Spacer()
                    
                }
                
                APPState()

            }
            .ignoresSafeArea()
        }
        
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherScreenView()
    }
}


// MARK: - WeatherBackGroundView
struct BackGroundView: View {
    
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("mintBgColor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


// MARK: - WeatheHightlightView
struct WeatherHighlightView: View {
    
    var cityname: String
    var weatherImg: String
    var tempature: Int
    
    var body: some View {
        Text(cityname)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding(.top,50)
        
        VStack(spacing: 10) {
            Image(systemName: weatherImg)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(tempature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
       .padding(.bottom, 30)
    }
}
// MARK: - WeatherDaysView
struct WeatherDaysView: View {
    var daysInWeek : String
    var weatherImage: String
    var tempature : Int
    
    var body: some View {
        VStack {
            Text(daysInWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(tempature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

// MARK: - WeatherButton
struct NextViewButton: View {
    
    var title: String
    var textColor : Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .medium,design: .default))
            .cornerRadius(10)
        //.padding(.top,30)
    }
}

// MARK: - WeatherButton
struct WeatherButtonView: View {
    
    var title: String
    var textColor : Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .medium,design: .default))
            .cornerRadius(10)
        //.padding(.top,30)
    }
}

// MARK: - APP States
struct APPState : View {
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        Text("")
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .active {
                    print("Active")
                } else if newPhase == .background {
                    print("Background")
                }
            }
    }
}
