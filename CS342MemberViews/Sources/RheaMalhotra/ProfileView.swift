//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct ProfileView: View {
    var body: some View {
        profileImage
            .resizable()
            .aspectRatio(1.2, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .shadow(radius: 50)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "RheaMalhotra", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
