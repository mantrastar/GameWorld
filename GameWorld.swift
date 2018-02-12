/*****************************************************************************
  Game World
  A minimal Engine for making a Game World using Swift.

  by VEN (ven@mantra.io)
  version 2018.02.11

  (*) mantra
*****************************************************************************/


import Foundation
import Dispatch
import Metal


/*****************************************************************************
  World
*****************************************************************************/

struct World
{
  var time: Double = 0
}


/*****************************************************************************
  Engine
*****************************************************************************/

class Engine
{
  static var engine = Engine()
  
  var world: World?
  var input: [Any]?
  var output: [Any]?


  // Game Loop
  
  class
  func loop()
    -> ()  
  {
    
    print()
    print("Starting Engine...")
    print()    
    
    while (true)
    {
      if (engine.input != nil)
      {
        engine.processInput(engine.input)
      }

      engine.simulate(engine.world)
      engine.transform(engine.world)
      engine.render(engine.world)
      
      if (engine.output != nil)
      {
        engine.processOutput(engine.output)
      }
    }
  }


  // World Building
  
  func simulate(_ world: World?)
    -> ()
  {

  }

  func transform(_ world: World?)
    -> ()
  {

  }

  func render(_ world: World?)
    -> ()
  {

  }


  // I/O

  func processInput(_ input: [Any]?)
    -> ()
  {

  }

  func processOutput(_ output: [Any]?)
    -> ()
  {

  }
  
}


/*****************************************************************************
  Game World
*****************************************************************************/

print()
print("Welcome to the Game World!")
print()    

Engine.loop()

