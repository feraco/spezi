//
// This source file is part of the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SpeziOnboarding
import SwiftUI


struct Welcome: View {
    @EnvironmentObject private var onboardingNavigationPath: OnboardingNavigationPath
    
    
    var body: some View {
        OnboardingView(
            title: "WELCOME_TITLE",
            subtitle: "WELCOME_SUBTITLE",
            areas: [
                .init(
                    icon: Image(systemName: "apps.iphone"), // swiftlint:disable:this accessibility_label_for_image
                    title: "WELCOME_AREA1_TITLE",
                    description: "WELCOME_AREA1_DESCRIPTION"
                ),
                .init(
                    icon: Image(systemName: "shippingbox.fill"), // swiftlint:disable:this accessibility_label_for_image
                    title: "WELCOME_AREA2_TITLE",
                    description: "WELCOME_AREA2_DESCRIPTION"
                ),
                .init(
                    icon: Image(systemName: "list.bullet.clipboard.fill"), // swiftlint:disable:this accessibility_label_for_image
                    title: "WELCOME_AREA3_TITLE",
                    description: "WELCOME_AREA3_DESCRIPTION"
                )
            ],
            actionText: "WELCOME_BUTTON",
            action: {
                onboardingNavigationPath.nextStep()
            }
        )
    }
}


#if DEBUG
struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStack(startAtStep: Welcome.self) {
            for onboardingView in OnboardingFlow.previewSimulatorViews {
                onboardingView
            }
        }
    }
}
#endif
