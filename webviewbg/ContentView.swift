//
//  ContentView.swift
//  webviewbg
//
//  Created by sultanmyrza on 2022/11/28.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        SwiftUIWebView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SwiftUIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let iframeUrl = "https://stackblitz.com/"
    
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)
        webView.backgroundColor = .green
        // Try to toggle this property an re-run the app
        // webView.isOpaque = false
        webView.load(URLRequest(url: URL(string: iframeUrl)!))
        
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
