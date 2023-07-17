import UIKit

//Creating a model for a Brighter Future

struct BrighterFuture {
    var reason: String
    var strategy: String
    var goal: String
}

//Creating a Brighter Future

let brighterFuture = BrighterFuture(reason: "To ensure a better future for our children", strategy: "Creating a balanced environment that focuses on the overall well-being of the individual", goal: "To create a society that values creativity, innovation, and self-expression")

//Creating a function to display the attributes of a Brighter Future

func displayBrighterFuture(brighterFuture: BrighterFuture) {
    print("The reason for building a brighter future is \(brighterFuture.reason). The strategy towards building a brighter future is \(brighterFuture.strategy). The goal of building a brighter future is \(brighterFuture.goal).")
}

//Calling the displayBrighterFuture function

displayBrighterFuture(brighterFuture: brighterFuture)

//Creating a method to share the message of a Brighter Future

extension BrighterFuture {
    func shareMessage() {
        print("Let's work together towards building a brighter future with the goal of \(goal)!")
    }
}

//Calling the shareMessage method

brighterFuture.shareMessage()

//Creating a function to update the message of a Brighter Future

func updateBrighterFuture(brighterFuture: BrighterFuture,reason: String, strategy: String, goal: String) -> BrighterFuture {
    var updatedBrighterFuture = brighterFuture
    updatedBrighterFuture.reason = reason
    updatedBrighterFuture.strategy = strategy
    updatedBrighterFuture.goal = goal
    return updatedBrighterFuture
}

//Calling the updateBrighterFuture function

let updatedBrighterFuture = updateBrighterFuture(brighterFuture: brighterFuture, reason: "To ensure a more sustainable future for generations to come", strategy: "Developing new strategies and solutions that promote sustainability", goal: "To create a future that is environmentally and economically responsible")

//Calling the displayBrighterFuture function

displayBrighterFuture(brighterFuture: updatedBrighterFuture)

//Creating a global initiative to promote a Brighter Future

struct GlobalInitiative {
    var organization: String
    var message: String
    var goal: String
    var callToAction: String
    func promoteBrighterFuture(brighterFuture: BrighterFuture) {
        print("\(organization) is promoting a brighter future with the message \(message). Their goal is \(goal). \(callToAction)")
    }
}

//Creating an instance of GlobalInitiative

let globalInitiative = GlobalInitiative(organization: "The United Nations", message: "Creating a prosperous and sustainable future for all humankind", goal: "To create a world free from poverty, inequality, and injustice", callToAction: "Join us and be part of the journey towards a brighter future!")

//Calling the promoteBrighterFuture function

globalInitiative.promoteBrighterFuture(brighterFuture: brighterFuture)

//Creating a protocol to promote an even Brighter Future

protocol BrighterFuturePromotion {
    func advocateBrighterFuture(brighterFuture: BrighterFuture)
}

//Adopting the protocol

struct Organization: BrighterFuturePromotion {
    var name: String
    func advocateBrighterFuture(brighterFuture: BrighterFuture) {
        print("\(name) is advocating a brighter future by \(brighterFuture.strategy)")
    }
}

//Creating an instance of Organization

let org = Organization(name: "The World Economic Forum")

//Calling the advocateBrighterFuture function

org.advocateBrighterFuture(brighterFuture: brighterFuture)

//Creating a class to document the progress of a Brighter Future

class Progress {
    var successes: [String]
    var challenges: [String]
    init(successes: [String], challenges: [String]) {
        self.successes = successes
        self.challenges = challenges
    }
    //Creating a method to track progress
    func trackProgress() {
        for success in successes {
            print("Success: \(success)")
        }
        for challenge in challenges {
            print("Challenges: \(challenge)")
        }
    }
}

//Creating an instance of Progress

let progress = Progress(successes: ["Creating a balanced environment that focuses on the overall well-being of the individual", "Promoting sustainability"], challenges: ["Persuading people to change their habits", "Addressing the underlying causes of poverty and inequality"])

//Calling the trackProgress method

progress.trackProgress()

//Creating a function to evaluate progress towards a Brighter Future

func evaluateProgress(progress: Progress, brighterFuture: BrighterFuture) {
    let successes = progress.successes
    let challenges = progress.challenges
    if successes.contains(brighterFuture.strategy) && !challenges.contains(brighterFuture.strategy) {
        print("We are making progress towards a brighter future")
    } else {
        print("We need to continue to work hard towards a brighter future")
    }
}

//Calling the evaluateProgress function

evaluateProgress(progress: progress, brighterFuture: brighterFuture)