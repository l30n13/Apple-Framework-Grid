//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-03.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
