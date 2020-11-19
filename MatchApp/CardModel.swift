//
//  CardModel.swift
//  MatchApp
//
//  Created by MacBook Pro on 21/10/20.
//

import Foundation

class CardModel {
    func getCards() -> [Card]{
        
        //Declare an empty array to store numbers that we've generated
        var generatedNumbers = [Int]()
        
        //Declare an empty array
        var generatedCards = [Card]()
        
        //randomly generate 8 pairs of cards
        while generatedNumbers.count < 8 {
            
            //generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            if generatedNumbers.contains(randomNumber) == false {
                
                //create two new card objects
                let cardOne = Card()
                let cardTwo = Card()
                
                //set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                //add them to the array
                generatedCards += [cardOne, cardTwo]
                
                //Add this number to the list of generated numbers
                generatedNumbers.append(randomNumber)
                
                print(randomNumber)
                
            }
            
        }
        
        //randomize the cards within the array
        generatedCards.shuffle()
        
        print(generatedCards.count)
        
        //return the array
        return generatedCards
    }
}

