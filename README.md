
# Kastor

Beavering your dock. Built on Swift while at the Apple Developer Academy.
Works by sending a shell command using the _"swift-commands"_ package.
CBL Documentation -> https://almondine-blob-12f.notion.site/Kastor-a-dock-customization-tool-8dc00833bad44049a437001fcbfd628a


## Run Locally
Using brew, tap into the repo and install it
```bash
  brew tap CaioFaSoares/kastor
  brew install kastor
```

Or, if you want, clone the project

```bash
  git clone https://github.com/CaioFaSoares/kastor.git
```

Go to the project directory

```bash
  cd my-project
```

Install dependencies

```bash
  swift build kastor
```

Run it!

```bash
  swift run kastor --help
```


## Examples

The following command will add two small spaces to the dock. These can be moved to wherever you like.
```bash
swift run kastor ss -i 2
``` 

The following command will lock the resizing feature of the dock. _Pretty useful_
```bash
swift run kastor ls -b true
``` 


## help

> ~ swift run kastor help

```
type     | function       | value    | description
ss       | addSmallSpace  | integer  | Adds a small space to the dock
bs       | addBigSpace    | integer  | Adds a thicc space to the dock
as       | addStack       | integer  | Adds a stack to the right of the dock
ds       | dockSize       | integer  | Resize the dock to the inputed integer size
ls       | lockSize       | bool     | Locks the ability to resize the dock
ib       | iconBounce     | bool     | Disables or enables icon bounce
```

