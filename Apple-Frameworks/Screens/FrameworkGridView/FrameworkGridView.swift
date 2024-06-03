//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-02.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        NavigationLink(value: frameWork) {
                            FrameworkTitleView(frameWork: frameWork)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(frameWork: framework)
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
