//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(statesAndCaps: [String: String]) -> String {
        
        var match = false
        
        for (state, capital) in statesAndCaps {
            
            let lowerCaseState = state.lowercaseString.characters.sort()
            let lowerCaseCapital = capital.lowercaseString.characters.sort()
            
            for char in lowerCaseState {
                
                if lowerCaseCapital.contains(char) {
                    
                    match = false
                    
                } else {
                    
                    match = true
                }
            }
            
            
            if match == true {
                
                return state
            }
            
        }
        
        return "No answer found"
    }
}

