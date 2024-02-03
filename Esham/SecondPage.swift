//
//  SecondPage.swift
//  Esham
//
//  Created by hessah aljarallah  on 30-01-2024.
//
//

 import Foundation
 import SwiftUI
 
struct SecondPage: View {
    @Binding var progress: Double
    @Binding var circleColor: Color
    
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round))
                .foregroundColor(circleColor)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .padding()
            
            Text("\(Int(progress * 100))%")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Button(action: {
                self.progress += 0.05
            }) {
                Text("زيادة التقدم")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Button(action: {
                self.circleColor = Color.red
            }) {
                Text("تغيير لون الدائرة")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}
