//
//  ContentView.swift
//  My Visit Card
//
//  Created by wherear3y0 on 18.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.9647, green: 0.8392, blue: 1).edgesIgnoringSafeArea(.all)
            VStack {
                Image("ava")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 8))
                    .foregroundColor(Color(hue: 0.775, saturation: 0.52, brightness: 0.64))
                    
                Text("Максим Кондратков").font(.system(size: 42))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                Text("Будущий iOS разработчик")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                Divider()
                Card(image: "mail", message: "wherar3y0@yandex.ru")
                Card(image: "command", message: "github.com/wherear3y0")
                Card(image: "paperplane.fill", message: "@wherearyo")
                    
                
                
                    
                    
            }
            .padding()
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(Color.white)
            .overlay(HStack {
                Image(systemName: image)
                Text(message).fontWeight(.bold).foregroundColor(Color.black)
            }.foregroundColor(Color(hue: 0.775, saturation: 0.52, brightness: 0.64)))
    }
}
