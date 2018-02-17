local screenshot

love.load = () ->
  love.graphics.setDefaultFilter("nearest", "nearest")
  love.keyboard.setKeyRepeat(true)
  if DEVELOPMENT
    screenshot = love.timer.getTime() + 15

love.update = () ->
  if DEVELOPMENT
    if screenshot and love.timer.getTime() > screenshot
      screenshot = nil
      love.graphics.newScreenshot()\encode('png', 'screenshot.png')
