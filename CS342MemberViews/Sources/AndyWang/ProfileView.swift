//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import SwiftUI


public struct ProfileView: View {
    public var body: some View {
        profileImage
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .clipShape(Circle())
            .shadow(color: Color.green, radius: 20)
            .frame(maxWidth: 300)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "AndyWang", ofType: "jpg"),
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
