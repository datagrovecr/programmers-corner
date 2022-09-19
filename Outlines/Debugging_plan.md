# VS Code Debugger

## VS Code Debugger
* A great tool for tracking down where bugs exist in your code
* Today will be a basic introduction, but be sure to share with the team when you discover other tips and tricks!

## Set Up
* Pull the updated code from the Programmer's Corner repo so you can code along

## Lay of the Land
* .vscode > launch.json file
    * When we first try to debug, we get a prompt to update the configuration
    * For this example, I added a path to tell VS Code the starting/entry point of my codebase - in this case, main.dart
* Main Ways to Access the Debugger        
    * `Run` tab
    * Icon on the left-hand navigation branch
    * There are others - explore! 
* Debugger Sections
    * Variables
    * Watch
    * Call Stack
* Breakpoints 
    * Conditional - Only hit breakpoint if conditions are met
    * Inline - Only applies to parts of a line of code
    * Function - Break at a function instead of a line of code
    * Logpoint - Logs messages to the console rather than breaking
* Debugger Toolbar
* Debug Console 

## Let's Debug! 
* Show the main.dart file
* Comment in one of the problems
* What do we expect to happen?
* Run `dart main.dart` command - what isn't working?
* Add breakpoints and variables to Watch
* Start debugger - what do we observe?
* Make one change at a time

## Let's Get a Volunteer!