local reactor = peripheral.wrap("BigReactors-Reactor_1")
local low = 1000000
local high = 9000000

while true do
  if reactor.getEnergyStored() <= low then
    reactor.setAllControlRodLevels(0)
  end
 
  if reactor.getEnergyStored() >= high then
    reactor.setAllControlRodLevels(100)
  end
 
  sleep(1)
end