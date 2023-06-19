//
//  TLButton.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(background)
                    
                    Text(title)
                        .foregroundColor(Color.white)
                        .bold()
                }
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background: .pink) {
            //Action
        }
    }
}
