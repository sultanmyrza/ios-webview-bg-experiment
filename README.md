# ios-webview-bg-experiment


https://user-images.githubusercontent.com/12681781/204208877-d3b5618c-5683-4795-a5bd-1568c1fc9add.mov


There is a white flash on iOS when we load iframe url. White flash is noticable if iOS app theme is dark and web page loaded via iframe has dark theme as well.

Since capacitor use WKWebView I tried to created native iOS project and load iframe with WKWebView.

If I set [webview.isOpaque = false] 
https://github.com/sultanmyrza/ios-webview-bg-experiment/blob/b25ceb2edcc4b00708c7dbc0916ae08a969a03a5/webviewbg/ContentView.swift#L34 
then white fash is gone.

I'm wondering if we can do same thing for capacitors iOS [WebView](https://github.com/ionic-team/capacitor/blob/9f1d863c1222096334a0dd05f39ce7f984a2763a/ios/Capacitor/Capacitor/CAPWebView.swift#L168)?
```swift
if let backgroundColor = configuration.backgroundColor {
    self.backgroundColor = backgroundColor
    self.isOpaque = false // <--- add this line?
    webView.backgroundColor = backgroundColor
    webView.isOpaque = false // <--- add this line? 
    webView.scrollView.backgroundColor = backgroundColor
    webView.scrollView.isOpaques // <--- add this line?
} 
```
