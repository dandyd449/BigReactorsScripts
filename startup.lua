local reactor = peripheral.wrap("BigReactors-Reactor_0")
local monitor = peripheral.wrap("top")
local bank = peripheral.wrap("tile_blockcapacitorbank_name_0")

local low = 1000000
local high = 9000000

local function updateScreen()
    monitor.setTextScale(5)
    monitor.clear()

    monitor.setCursorPos(1,1)
    monitor.write( reactor.isActive() )

    monitor.setCursorPos(1,2)
    monitor.write( reactor.getEnergyStored() )

    monitor.setCursorPos(1,4)
    monitor.write( bank.getEnergyStored() )

    monitor.setCursorPos(1,5)
    monitor.write( bank.getMaxEnergyStored() )
end

local function main()
  
  while true do
    updateScreen()
    
    if reactor.getEnergyStored() <= low then
      reactor.setActive(true)
    end

    if reactor.getEnergyStored() >= high then
      reactor.setActive(false)
    end

    sleep(1)
  end
  
end

main()
