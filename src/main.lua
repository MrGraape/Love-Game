---
--- Created by Mr_Graape.
--- DateTime: 10/11/2022 5:00 PM

cursor = love.mouse.getCursor( )
local Colume_self1 = {0,0,0}
local Colume_self2 = {0,0,0}
local Colum_self3 = {0,0,0}
math.randomseed( os.time() )

function love.load()
    dice_image = love.graphics.newImage(current_dice_image)
end

function dice_roll(dice)
    dice = math.random (1, 6)
    current_dice = dice
    current_dice_image = string.format("dice%s.png", current_dice)
end

function love.draw()
    love.graphics.draw(dice_image,300,50)
end

dice_roll()



