//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import OliverAalami
import PaulSchmiedmayer
import RajPabari
import SonyaJin
import SwiftUI


extension Member {
    func memberView(with navigationPath: Binding<NavigationPath>) -> some View {
        @ViewBuilder
        var memberView: some View {
            switch self {
            case .paulSchmiedmayer:
                PaulSchmiedmayer(navigationPath: navigationPath)
            case .vishnuRavi:
                Text("Vishnu 👋")
            case .oliverAalami:
                OliverAalami(navigationPath: navigationPath)
            case .rajPabari:
                RajPabari()
            case .sonyaJin:
                SonyaJin(navigationPath: navigationPath)
            }
        }
        return memberView
    }
}
