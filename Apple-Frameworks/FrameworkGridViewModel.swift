//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-03.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    
    @Published var isShowingDetailsView: Bool = false
}
