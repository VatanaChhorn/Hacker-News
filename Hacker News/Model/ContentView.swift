//
//  ContentView.swift
//  Hacker News
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView
        {
            //MARK: - IMPORTANT PART
            List (networkManager.posts) {
                post in
                NavigationLink(destination: BrowserView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title) }
                } 
            }
            .navigationBarTitle("HACKER NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        //MARK: - IMPORTANT PART
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


