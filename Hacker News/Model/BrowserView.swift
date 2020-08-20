//
//  browserView.swift
//  Hacker News
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import SwiftUI

struct BrowserView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)    }
}

struct browserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView(url: "www.google.com")
    }
}


