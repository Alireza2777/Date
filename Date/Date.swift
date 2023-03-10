//
//  Date.swift
//  Date
//
//  Created by Alireza Karimi on 2023-03-09.
//

import Foundation

struct Date {
  var month: Int
  var day : Int
  var year : Int
  init(month: Int, day: Int, year: Int) {
    if month <= 12 && month > 0 {
      self.month = month
    }
    else {
      self.month = 1
      self.year = 2000
      self.day = 1
      return
    }
    var limit :Int = 30
    switch month {
    case 1,3,5,7,8,10,12:
      limit = 31
    case 2:
      limit = 28
    default:
      limit = 30
    }
    if day <= limit && day > 0{
      self.day = day    }
    else {
      self.month = 1
      self.year = 2000
      self.day = 1
      return
    }
    if year > 0 {
      self.year = year
    }
    else {
      self.month = 1
      self.year = 2000
      self.day = 1
      return
    }
  }
  mutating func input() {
    while true {
      print("Input a date (M/D/Y): ", terminator: "")
      if let allinput = readLine(){
        var arrstring = allinput.components(separatedBy: "/")
        if arrstring.count == 3{
          var arrint = [0,0,0]
          for i in 0...2 {
            if let number = Int(arrstring[i]){
              arrint[i] = number
            }
            else{
              print("invalide input")
              continue
            }
          }
          if arrint[0] < 1 || arrint[0] > 12 {
            print("invalide input")
            continue
          }
          var limit :Int = 30
          switch arrint[0] {
          case 1,3,5,7,8,10,12:
            limit = 31
          case 2:
            limit = 28
          default:
            limit = 30
          }
          if arrint[1] < 0 || arrint[1] > limit{
            print("invalide input")
            continue
          }
          if arrint[2] > 0 {
            year = arrint[2]
            day = arrint[1]
            month = arrint[0]
          }
          else{
            print("invalide input")
            continue
          }
        }
        else{
          print("invalide input")
          continue
        }
      }
      else {
        print("invalide input")
        continue
      }
    }
    print("Please Enter Date (Year) ")
    year = Int(readLine()!)!
    print("Please Enter Date (Month) ")
    month = Int(readLine()!)!
    print("Please Enter Date (Day) ")
    day = Int(readLine()!)!
  }
  func show() {
    var months : String ["Jan","Feb","Mar","Apr","May","Jul","Aug","Sep","Oct","Nov","Dec"]
  }
}


enum DateFormat {
  case standard, long, two
}
