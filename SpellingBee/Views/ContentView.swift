//
//  ContentView.swift
//  SpellingBee
//
//  Created by Russell Gordon on 2022-02-16.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    
    
    @State var inputGiven = ""
    @State var answerChecked = false
    @State var answerCorrect = false
    //
    
    
    // MARK: Computed properties
    var body: some View {
        
        
        // creation of the displaying code for the randomly selected image and image name (tied together)
        VStack {
            
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            // on tap gesture means that tapping anywhere will create some kind of action
            // the on tap gesture can be added to any fucntionality we need
                .onTapGesture {
                    
                    // Create the word to be spoken (an utterance) and set
                    // characteristics of how the voice will sound
                    //.word allows us to find the word we need to create from the String
                    let utterance = AVSpeechUtterance(string: currentItem.word)
                    
                    // See a list of available language codes and their corresponding
                    // voice names and genders here:
                    // https://www.ikiapps.com/tips/2015/12/30/setting-voice-for-tts-in-ios
                    // Name and gender hould be approriate to the design of the app
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                    
                    // How fast the utterance will be spoken
                    utterance.rate = 0.6
                    
                    // Synthesize (speak) the utterance
                    // passing the word and synthersizer to the AVSpeechSynthesizer to create an outcome
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)
                    
                    
                    
                    
                }
            
        }
        
        VStack{
            
            // Creating the inputGiven
            // Using $ to tie it to the origanal inputGiven Value
            TextField("Type Answer Here", text: $inputGiven)
                .padding()
            
            ZStack(alignment: .leading){
                Button(action: {
                    // Answer has been checked
                    answerChecked = true
                    
                    // If the answer is correct = true
                    // If the answer is false = false
                    if inputGiven == currentItem.word{
                        answerCorrect = true
                    } else {
                        answerCorrect = false
                    }
                    
                }, label: {
                    Text("Check answer")
                    
                })
                    .padding()
                    .buttonStyle(.bordered)
                
            }
            ZStack{
                HStack {
                    
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(.green)
                    //        CONDITION      true  false
                        .opacity(answerCorrect == true ? 1.0 : 0.0)
                    
                    Image(systemName: "x.square")
                        .foregroundColor(.red)
                    //        CONDITION1         AND     CONDITION2         true  false
                    //       answerChecked = true     answerCorrect = false
                        .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
                    
                }
            }
            
                            Button(action:{
                                // resetting all the orginal properties
                                currentItem = itemsToSpell.randomElement()!
                                answerChecked = false
                                answerCorrect = false
                                inputGiven = ""
            
                            }, label: {
                                Text("New Question")
                            })
                .padding()
                .buttonStyle(.bordered)
        }
         // Next button for the checking of the question
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
