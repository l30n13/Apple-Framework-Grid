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
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 45, height: 45)
                }
                .padding()
            }
            
            Spacer()
            FrameworkTitleView(frameWork: frameWork)
            
            Text(frameWork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
