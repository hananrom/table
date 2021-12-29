//
//  main.swift
//  resturant booking
//
//  Created by hanan on 19/05/1443 AH.
//

import Foundation

print("Welcome to Table application")
print("in which city do you want to book a resturant ? ")
print("Riyadh , Jeddah , Dammamm  ? ")
var city = readLine()
switch city {
case "Riyadh":
    riyadhresturants ()
case "Jeddah":
    Jeddahresturants ()
case "Dammamm":
    Dammamresturants ()
default:
    print ("Sorry , our servises don't reach this city")
}


class resturant {
    var name : String
    var location : String
    var Available : [String]
    
    func booking () {
        
        if Available.isEmpty {
            print("Sorry, all the tables for today were fully booked .")
        } else {
            Available.remove(at: 0)
            print("Thank you , your reservation is confirmed.")
        }
    }
    
    init(name:String,location:String){
        Available = ["table1","table2","table3","table4","table5","table6","table9","table10","table11","table12"]
        self.name = name
        self.location = location
        
    }
}

/////////////

//// Resturants functions
///
///

func riyadhresturants () {
    let resturant : [resturant] = [resturant(name: "batel", location: "Riyadh"),resturant(name: "Ronaz", location: "Riyadh"),resturant(name: "Chimney", location: "Riyadh"),resturant(name: "Monopoly", location: "Riyadh"),resturant(name: "Shrimplus", location: "Riyadh") ]
    
    print ("choose a resturant to book a table ")
    print ("""
 1.Bateel Resturant \n 2.Ronaz Resturant \n 3.Chimney Resturant \n 4.Monopoly Resturant \n 5.Shrimplus Resturant
 """)

    let userchoice = readLine()
    
    switch userchoice {
    case "Bateel" :
        resturant [0].booking()
    case "Ronaz":
        resturant [1].booking()
    case "Chimney":
        resturant [2].booking()
    case "Monopoly" :
        resturant [3].booking()
    case "Shrimplus" :
        resturant [4].booking()
    default :
        print("Sorry this resturant is not in our list")
    }
}

func Jeddahresturants () {
    let jedaahresturant : [resturant] = [resturant(name: "Karam Beirut", location: "Jeddah"),resturant(name: "Ginger leaf", location: "Jeddah"),resturant(name: "Gold Sushi ", location: "Jeddah"),resturant(name: "lusin", location: "Jeddah"),resturant(name: "Twina", location: "Jeddah") ]
    
    
    
    print ("choose a resturant to book a table ")
    print ("""
 1.Karam Beirut Resturant \n 2.Ginger leaf Resturant \n 3.Gold Sushi Resturant \n 4.lusin Resturant \n 5.Twina Resturant
 """)
    let userchoice1 = readLine()
    
    switch userchoice1 {
    case "Karam Beirut" :
        jedaahresturant[0].booking()
    case "Ginger leaf":
        jedaahresturant[1].booking()
    case "Gold Sushi ":
        jedaahresturant[3].booking()
    case "lusin " :
        jedaahresturant[4].booking()
    case "Twina" :
        jedaahresturant[5].booking()
    default :
        print("Sorry this resturant is not in our list")
    }
}


func Dammamresturants () {
    let dammamresturant : [resturant] = [resturant(name: "Blue", location: "Dammam"),resturant(name: "Gulf", location: "Dammam"),resturant(name: "Soul", location: "Dammam"),resturant(name: "La Gondola", location: "Dammam"),resturant(name: "The cuts ", location: "Dammam") ]
    
    print ("choose a resturant to book a table ")
    print ("""
 1.Blue Resturant \n 2.Gulf Resturant \n 3.Soul Resturant \n 4.La Gondola Resturant \n 5.The cuts Resturant
 """)
    let userchoice2 = readLine()
    
    switch userchoice2 {
    case "Blue" :
        dammamresturant[0].booking()
    case "Gulf":
        dammamresturant[1].booking()
    case "Soul":
        dammamresturant[2].booking()
    case "La Gondola" :
        dammamresturant[3].booking()
    case "The cuts " :
        dammamresturant[4].booking()
    default :
        print("Sorry this resturant is not in our list")
    }
}








