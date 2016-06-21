//
//  main.swift
//  TimeConversion


import Foundation

var s : String = "12:25:25PM"


if s[s.endIndex.advancedBy(-2)] == "P" {
    
    s.removeRange(s.endIndex.advancedBy(-2)...s.endIndex.advancedBy(-1))


    
    var firstTwoPlaces = s[s.startIndex...s.startIndex.successor()]
    
    if firstTwoPlaces != "12" {
        
        firstTwoPlaces = String(Int(firstTwoPlaces)! + 12)
        
        s.replaceRange(s.startIndex...s.startIndex.successor(), with:firstTwoPlaces)
    }
    
    print(s)
}
    
else {
    
    let firstTwoPlaces = s[s.startIndex...s.startIndex.successor()]
    
    if firstTwoPlaces == "12" {
        s.replaceRange(s.startIndex...s.startIndex.successor(), with:"00")
    }
    
    s.removeRange(s.endIndex.advancedBy(-2)...s.endIndex.advancedBy(-1))
    
    print(s)
}

