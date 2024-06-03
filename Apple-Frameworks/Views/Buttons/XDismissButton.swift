//
//  XDismissButtonView.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-03.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
