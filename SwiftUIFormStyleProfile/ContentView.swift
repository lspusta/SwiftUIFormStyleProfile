//
//  ContentView.swift
//  SwiftUIFormStyleProfile
//
//  Created by Lucas Spusta on 7/6/20.
//

import SwiftUI

struct ContentView: View {
    
    var subscriptions = ["Subscription 1", "Subscription 2", "Subscription 3"]

    @State private var selectedSubscription = 0
    
    var transactions = ["Transaction 1", "Transaction 2", "Transaction 3"]

    @State private var selectedTransactions = 0
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    
                    Section{
                        
                        Picker(selection: $selectedSubscription, label: Text("Your Subscriptions")) {
                            ForEach(0 ..< subscriptions.count) {
                                Text(self.subscriptions[$0])
                            }
                        }
                        
                        Picker(selection: $selectedTransactions, label: Text("Your Transactions")) {
                            ForEach(0 ..< transactions.count) {
                                Text(self.transactions[$0])
                            }
                        }

                    }
                    
                    Section{
                   
                        
                    }
                    
                    Section{
                        Button(action: {
                           
                        }) {
                            Text("Sign Out")
                          
                        }
                    }
                   
                }
            }.navigationBarTitle("Profile")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
