//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-02.
//

import SwiftUI

struct FrameworkDetailView: View {
    let frameWork: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(frameWork: frameWork)
            
            Text(frameWork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: frameWork.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
