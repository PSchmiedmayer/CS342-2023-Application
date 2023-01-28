//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import AdamZhao
import AndyWang
import AshleyGriffin
import AudreyLin
import HamedHekmat
import JustinWu
import OliverAalami
import ParthavShergill
import PaulSchmiedmayer
import RajPabari
import StanleyYang
import SwiftUI

extension Member {
    // swiftlint:disable:next cyclomatic_complexity
    func memberView(with navigationPath: Binding<NavigationPath>) -> some View {
        @ViewBuilder
        var memberView: some View {
            switch self {
            case .paulSchmiedmayer:
                PaulSchmiedmayer(navigationPath: navigationPath)
            case .audreyLin:
                AudreyLin(navigationPath: navigationPath)
            case .vishnuRavi:
                Text("Vishnu 👋")
            case .adamZhao:
                AdamZhao(navigationPath: navigationPath)
            case .oliverAalami:
                OliverAalami(navigationPath: navigationPath)
            case .andyWang:
                AndyWang(navigationPath: navigationPath)
            case .rajPabari:
                RajPabari()
            case .hamedHekmat:
                HamedHekmat()
            case .justinWu:
                JustinWu(navigationPath: navigationPath)
            case .ashleyGriffin:
                AshleyGriffin(navigationPath: navigationPath)
            case .stanleyYang:
                StanleyYang(navigationPath: navigationPath)
            case .parthavShergill:
                ParthavShergill(navigationPath: navigationPath)
            }
        }
        return memberView
    }
}
