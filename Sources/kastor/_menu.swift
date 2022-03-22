import Foundation
import ArgumentParser

struct MenuCheck: ParsableCommand {
    
    @Argument(help: "The type of customization to add")
    var type: String
    
    @Option(name: .shortAndLong, help: "This value is used for additions or percentage level customization")
    var integer: Int?
    
    @Option(name: .shortAndLong, help: "This value is used for boolean level customization")
    var boolean: Bool?
    
    
    mutating func run() throws {
        switch type {
        case "ss":
            addSmallSpace(desired: integer ?? 1)
        case "bs":
            addBigSpace(desired: integer ?? 1)
        case "as":
            addStack(desired: integer ?? 1)
        case "ds":
            dockSize(desired: integer ?? 1)
        case "ls":
            lockSize(desired: boolean)
        case "ib":
            iconBounce(desired: boolean)
        case "help":
            help()
        default:
            help()
        }
    }
}
