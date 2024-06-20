//
//  ContentView.swift
//  app
//
//  Created by nAkUl ChOwTHriK on 6/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            
            journalview()
                .tabItem{
                    Image(.journalpng)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(0.1, contentMode: .fit)
                }
                .tag(1)
            
            homeview()
                .tabItem{
                    Image(.homepng)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(0.1, contentMode: .fit)
                }
                .tag(0)
            
            calendarview()
                .tabItem{
                    Image(.calendarpng)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(0.1, contentMode: .fit)
                }
                .tag(2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
