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
          
                VStack {
                    
                    SettingsRow(imageName: "square.and.arrow.up", title: "Your Subscriptions") {
                       
                    }
                
                    SettingsRow(imageName: "pencil.and.outline", title: "Write a review") {
         
                    }

                    
                    SettingsRow(imageName: "textbox", title: "Tweet about it") {
                      
                    }
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
