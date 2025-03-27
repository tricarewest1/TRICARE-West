import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = true
        webView.scrollView.minimumZoomScale = 1.0
        webView.scrollView.maximumZoomScale = 1.0
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            WebView(url: URL(string: "https://tricare-west-mobile-np3.high.powerappsportals.us/")!)
                .frame(maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
class Coordinator: NSObject, UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return nil
    }
}

func makeCoordinator() -> Coordinator {
    Coordinator()
}
