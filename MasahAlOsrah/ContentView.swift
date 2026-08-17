import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView()
        view.allowsBackForwardNavigationGestures = true
        view.load(URLRequest(url: URL(string: "https://fesurvey.stats.gov.sa/family/auth/user")!))
        return view
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}