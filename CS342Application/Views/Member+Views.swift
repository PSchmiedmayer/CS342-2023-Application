//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
<<<<<<< HEAD
import JustinWu
=======

import AndyWang
import AshleyGriffin
import AudreyLin
>>>>>>> 1721ea69bba3fa8c1cca40f66751db1cb2fa86c4
import OliverAalami
import PaulSchmiedmayer
import RajPabari
import SwiftUI


extension Member {
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
            case .oliverAalami:
                OliverAalami(navigationPath: navigationPath)
            case .andyWang:
                AndyWang(navigationPath: navigationPath)
            case .rajPabari:
                RajPabari()
            case .justinWu:
                JustinWu(navigationPath: navigationPath)
            case .ashleyGriffin:
                AshleyGriffin(navigationPath: navigationPath)
            }
        }
        return memberView
    }
}
