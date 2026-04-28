//
//  ContentView.swift
//  book
//
//  Created by BMCC Lab Guest on 3/9/26.
//

import SwiftUI

struct ContentView: View {
var body: some View {
ZStack {
Color.white
.ignoresSafeArea()

HStack(spacing: 0) {

// Spine
RoundedRectangle(cornerRadius: 6)
.fill(Color.red)
.frame(width: 30, height: 220)
.overlay(
RoundedRectangle(cornerRadius: 6)
.stroke(Color.black, lineWidth: 3)
)

// Front cover
    ZStack {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.black)
            .frame(width: 180, height: 220)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.red, lineWidth: 3)
            )
        VStack{
            // Title box
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.red)
                .frame(width: 120, height: 30)
                .overlay(
                    Text("Jungle")
                        .font(.headline)
                        .foregroundColor(.white)
                        .bold()
                ).offset(y: 300)
            
            Spacer()
            
            // Author box
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.red)
                .frame(width: 120, height: 30)
                .overlay(
                    Text("Author Name: Jemz")
                        .font(.caption)
                        .foregroundColor(.white)
                )
            
            .padding(.vertical, 300)}}
}
}
}
}


#Preview {
ContentView()
}

