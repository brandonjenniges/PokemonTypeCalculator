//
//  SearchButton.swift
//  PokeTypeCalculator
//
//  Created by Brandon Jenniges on 1/9/21.
//

import SwiftUI
import Combine

struct SearchButton: View {
        
    let padding: CGFloat = 12
    let imageSize: CGFloat = 32
    let showSearchViewSubject: PassthroughSubject<Bool, Never>
    
    var body: some View {
        
        Button(action: {
            self.showSearchViewSubject.send(true)
        }) {
            Image(systemName:  "magnifyingglass")
                .resizable()
                .foregroundColor(.white)
                .frame(width: imageSize, height: imageSize)
                .padding(.all, padding)
                .background(AppColors.red)
                .cornerRadius((imageSize + padding * 2) / 2.0)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
        }
    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton(showSearchViewSubject: PassthroughSubject<Bool, Never>())
    }
}

