local reactor = peripheral.wrap("BigReactors-Reactor_0")
local monitor = peripheral.wrap("top")

local low = 1000000
local high = 9000000

monitor.setTextScale(5)

while true do
  monitor.clear()
  
  monitor.setCursorPos(1,1)
  monitor.write( reactor.isActive() )
  
  monitor.setCursorPos(1,2)
  monitor.write( reactor.getEnergyStored() )
  
  if reactor.getEnergyStored() <= low then
    reactor.setActive(true)
  end
 
  if reactor.getEnergyStored() >= high then
    reactor.setActive(false)
  end
 
  sleep(1)
end
