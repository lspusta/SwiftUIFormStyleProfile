//
//  ContentView.swift
//  SwiftUIFormStyleProfile
//
//  Created by Lucas Spusta on 7/6/20.
//

import SwiftUI
import BottomBar_SwiftUI

let bottomBarItems: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .blue),
    BottomBarItem(icon: "heart", title: "Likes", color: .green),
    BottomBarItem(icon: "message", title: "Messages", color: .orange),
    BottomBarItem(icon: "person.fill", title: "Profile", color: .red)
]

struct ContentView: View {
    

    @State private var selectedIndex: Int = 0

    var selectedItem: BottomBarItem {
        bottomBarItems[selectedIndex]
    }
    
    var body: some View {

        
        NavigationView {
            VStack {
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
                BottomBar(selectedIndex: $selectedIndex, items: bottomBarItems)
            }

           
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
