import Cocoa

/*:

Your prior goal was to:

* generate a string, 20 characters long, with letters randomly selected
    * based on probability of each letter occuring in all (or at least most) English writing

However, this is not quite how a Markov Chain works.

A Markov chain makes selections based on an analysis of *only* the input text provided.

So, let's move to the next step.

Consider the text below. Re-execute the playground a few times.

*/

let input = getRandomSequence()

getRandomSequence()

input

// Break the string up into an array using delimiters created above

var letterCounts = [Character:Int]()

//loop over the input string
for letter in input.characters {
    letter
    //build the dictionary list of letter counts
    if letterCounts[letter] == nil {
        letterCounts[letter] = 1 //first time
    }else{
        //already in dictionary
        //adding one into current count
        letterCounts[letter]! = letterCounts[letter]! + 1
    }
}

letterCounts


input.characters.count

//empty dictionary
var letterProbabilities = [Character:Float]()

//loop over list of letter counts
for (letter,count) in letterCounts{
    letterProbabilities[letter] = Float(count)/Float(input.characters.count) * 100
}

letterProbabilities
var total:Float = 0.0
for (letter,probabilities) in letterProbabilities {
    total = total + probabilities
    total
}
/*:

What do you notice about the input text each time you run the playground?

Your next step is to take what you have learned from prior playgrounds, and, write an algorithm in plain English that you think would accomplish this goal:

* determine the probability with which a given letter occurs in the input text
* build an output string that is 30 characters long
    * letters occur in the output string based on the proabability with which they occurred in the input string

*/
var outputString: String = ""

for _ in 1...30 {
    
    let newRandomValue = arc4random_uniform(1000)
    
    let newRandomValueFloat = Float(newRandomValue) / 10
    
    var upperValue: Float = 0
    for (letter,probability) in letterProbabilities {
        
        upperValue += probability
        
        if (newRandomValueFloat < upperValue) {
            
            outputString += String(letter)
            
            break
        }
    }
}


outputString
outputString.characters.count


/*

Write your algorithm ideas here:

Summary
-------
- count number of letters
- determine how many of each letter their are
- divide by number of letters

Ideas
-----


Algorithm (point-form, in English)
----------------------------------


Assumptions
-----------

*/
