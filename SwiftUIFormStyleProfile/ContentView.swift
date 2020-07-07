//
//  ContentView.swift
//  SwiftUIFormStyleProfile
//
//  Created by Lucas Spusta on 7/6/20.
//

import SwiftUI

struct ContentView: View {
    

    
    var body: some View {
        NavigationView {
            ScrollView {
                Image("lucas")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100.0, height: 100.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1.0))

                Text("Lucas Spusta")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                VStack {
                    
                    SettingsRow(imageName: "square.and.arrow.up", title: "Your Subscriptions") {
                       
                    }
                
                    SettingsRow(imageName: "pencil.and.outline", title: "Write a review") {
         
                    }
                    
                    SettingsRow(imageName: "textbox", title: "Tweet about it") {
                      
                    }
                }
                .settingsBackground()

                
                VStack {
                    AppVersionRow(imageName: "info.circle", title: "App version", version: "1.0")
                }
                .settingsBackground()
           
            }
            .navigationBarTitle("Profile")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
