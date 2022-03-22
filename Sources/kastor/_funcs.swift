import Foundation
import Commands

// let smallSpace: String = "'{"tile-type"="small-spacer-tile";}'"

func addSmallSpace(desired: Int) -> Void {
    for _ in 1...desired {
        Commands.Bash.system("defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"small-spacer-tile\";}'")
    }
    killDock()
    print("\(desired) small spaces added.")
}

func addBigSpace(desired: Int) -> Void {
    for _ in 1...desired {
        Commands.Bash.system("defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'")
    }
    killDock()
    print("\(desired) thicc spaces added.")
}

func addStack(desired: Int) -> Void {
    for _ in 1...desired {
        Commands.Bash.system("defaults write com.apple.dock persistent-others -array-add '{\"tile-data\" = {};\"tile-type\"=\"small-spacer-tile\"; }'")
    }
    killDock()
    print("\(desired) stacks added.")
}

func dockSize(desired: Int) -> Void {
    let value = desired
    
    Commands.Bash.system("defaults write com.apple.dock tilesize -int \(value)")
    killDock()
    print("The dock has been resized to \(desired)%.")
}

func lockSize(desired: Bool?) -> Void {
    if desired == true {
        Commands.Bash.system("defaults write com.apple.Dock size-immutable -bool true")
        print("Dock resizing has been locked.")
    } else if desired == false {
        Commands.Bash.system("defaults write com.apple.Dock size-immutable -bool false")
        print("Dock resizing has been unlocked.")
    } else {
        print("No bool value was inputed")
    }
    killDock()
}

func iconBounce(desired: Bool?) -> Void {
    if desired == true {
        Commands.Bash.system("defaults write com.apple.dock no-bouncing -bool true")
        print("Icon bounce has been enabled.")
    } else if desired == false {
        Commands.Bash.system("defaults write com.apple.dock no-bouncing -bool false")
        print("Icon bounce has been disbled.")
    } else {
        print("No bool value was inputed")
    }
    killDock()
}

func killDock() -> Void {
    Commands.Bash.system("killall Dock")
}

func clear() -> Void {
    Commands.Bash.system("clear")
}

func help() -> Void {
        print("Welcome to Kastor 0.1")
        print("Now it works!")
    
        print("type     | function       | value    | description")
        print("ss       | addSmallSpace  | integer  | Adds a small space to the dock")
        print("bs       | addBigSpace    | integer  | Adds a thicc space to the dock")
        print("as       | addStack       | integer  | Adds a stack to the right of the dock")
        print("ds       | dockSize       | integer  | Resize the dock to the inputed integer size")
        print("ls       | lockSize       | bool     | Locks the ability to resize the dock")
        print("ib       | iconBounce     | bool     | Disables or enables icon bounce")
}
