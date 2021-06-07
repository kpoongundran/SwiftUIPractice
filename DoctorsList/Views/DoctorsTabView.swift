//
//  DoctorsTabView.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 07/06/21.
//

import SwiftUI

struct DoctorsTabView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView (selection: $tabIndex) {
            
            //Tab 1
            Text("This tab's tag is \(tabIndex), where tag is the value you give this tab's tag")
                .tabItem {
                    VStack {
                        Image (systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            //Tab 2
            Button("Take me Tab 3!") {
                tabIndex = 2
            }
            .tabItem {
                VStack {
                    Image (systemName: "arrow.right.circle")
                    Text ("Tab 2")
                }
            }
            .tag(1)
            
            //Tab 3
            DoctorsView ()
                .tabItem {
                    VStack {
                        Image (systemName: "hand.raised")
                        Text ("Tab 3")
                    }
                }
                .tag(2)
        }
    }
}

struct DoctorsTabView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsTabView()
    }
}
