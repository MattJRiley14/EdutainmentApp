//
//  ContentView.swift
//  EdutainmentApp
//
//  Created by BCCS 2022 on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    struct Question {
        var question: String
        var answer: Int
    }
    
    @State private var questions = [Question]()
        
    @State private var questionNumber = 0
    
    @State private var number = 0
    
    @State private var multiple = 0
    
    @State private var message = "Select a Multiple to start the game"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Form {
                Picker("Answer", selection: $number){
                    ForEach(0..<100){
                        Text("\($0)")
                    }
                }
                
                Button {
                    guess()
                } label: {
                    Text("Submit Answer")
                }
            }

            Spacer()
            
            Form {
                Picker("Multiple", selection: $multiple){
                    ForEach(0..<10){
                        Text("\($0)")
                    }
                }
                
                Button {
                    startGame()
                } label: {
                    Text("Submit Mutiple")
                }
            }
            
            Button {
                nextQuestion()
            } label: {
                Text("NEXT QUESTION")
            }
            
            Spacer()
            
        }
    }
    
    func guess(){
        // Code to be run when user submits their guess
    }

    func nextQuestion(){
        // Code to be run when user clicks to go to next question
    }

    func startGame(){
        // Code to be run a the start of the game (AKA When the user selects and submits the multiple of their choice)
        
    }
}

#Preview {
    ContentView()
}
