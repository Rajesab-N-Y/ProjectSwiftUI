//
//  CustomListRowView.swift
//  ProjectSwiftUI
//
//  Created by Rajesab N Y on 23/07/23.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if let rowContent = rowContent {
                Text(rowContent)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if let rowLinkLabel = rowLinkLabel, let rowLinkDestination = rowLinkDestination, let url = URL(string: rowLinkDestination) {
                Link(rowLinkLabel, destination: url)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(rowLabel: "Developer", rowIcon: "paintpalette", rowContent: "Rajesab", rowTintColor: .purple)
        }
    }
}
