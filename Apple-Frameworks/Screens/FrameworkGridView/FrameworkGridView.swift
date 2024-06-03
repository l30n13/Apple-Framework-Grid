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
                        FrameworkTitleView(frameWork: frameWork)
                            .onTapGesture {
                                viewModel.selectedFramework = frameWork
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailView(frameWork: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailsView)
            }
        }
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
