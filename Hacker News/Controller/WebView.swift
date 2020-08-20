//
//  WebView.swift
//  Hacker News
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import Foundation
import SwiftUI 
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString
        {
            if let url = URL(string: safeString)
            {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
