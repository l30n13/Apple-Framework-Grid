//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-03.
//

import SwiftUI

struct FrameworkTitleView: View {
    let frameWork: Framework
    
    var body: some View {
        VStack {
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(frameWork: MockData.sampleFramework)
}
