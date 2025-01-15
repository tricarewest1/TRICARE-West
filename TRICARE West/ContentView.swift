//
//  ContentView.swift
//  TRICARE West
//
//  Created by Bryan Marosch on 1/14/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            WebView(url: URL(string: "https://tricare-west-mobile-q2.powerappsportals.us/")!)
                .frame(maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
