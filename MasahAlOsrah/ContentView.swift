import SwiftUI
import WebKit

struct ContentView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let web = WKWebView()
        web.allowsBackForwardNavigationGestures = true
        web.load(URLRequest(url: URL(string:
        "https://fesurvey.stats.gov.sa/family/auth/user")!))
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}