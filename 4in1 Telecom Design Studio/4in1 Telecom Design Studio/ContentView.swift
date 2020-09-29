//
//  ContentView.swift
//  4in1 Telecom Design Studio
//
//  Created by Charlithia Palmer on 8/12/20.
//

import SwiftUI
import WebKit




struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                WebKit(request: URLRequest(url: URL(string: "https://4in1telecomdesignstudio.com")!))
            }.navigationBarTitle("4-in-1 Telecom Design Studio")
            .font(.headline)
            
            
        }
    }
}


struct WebKit: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: UIViewRepresentableContext<WebKit>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
