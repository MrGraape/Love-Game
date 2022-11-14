---
--- Created by Mr_Graape.
--- DateTime: 10/11/2022 5:00 PM

cursor = love.mouse.getCursor( )
colum = 0
turn = 0
local Colum_self1 = {0,0,0}
local Colum_self2 = {0,0,0}
local Colum_self3 = {0,0,0}




math.randomseed( os.time() )

function love.load()
    colum_image = love.graphics.newImage("Images/colum.png")
    blank_image = love.graphics.newImage("Images/Blank.png")
end

function colum_click_detection(mouseX,mouseY)
        if (mouseX > 400 and mouseX < 556) and (mouseY > 300 and mouseY < 559) then
        colum = 3
    elseif mouseX > 310 and mouseX < 466 and mouseY > 300 and mouseY < 559 then
        colum = 2
    elseif mouseX > 220 and mouseX < 376 and mouseY > 300 and mouseY < 559 then
        colum = 1
    end
end

function dice_roll(dice)
    dice = math.random (1, 6)
    current_dice = dice
    dice_image = string.format("Images/dice%s.png", current_dice)
    current_dice_image = love.graphics.newImage(dice_image)
end



function love.mousepressed()
    if turn == 0 then
        mouse_x = love.mouse.getX()
        mouse_y = love.mouse.getY()
        colum_click_detection(mouse_x,mouse_y)


        if colum == 1 then
            if Colum_self1[1] == 0 then
                Colum_self1[1] = current_dice
                dice_p1_1_c1_image = current_dice_image
            elseif Colum_self1[2] == 0 then
                Colum_self1[2] = current_dice
                dice_p1_2_c1_image = current_dice_image
            elseif Colum_self1[3] == 0 then
                Colum_self1[3] = current_dice
                dice_p1_3_c1_image = current_dice_image
            end
        end

        if colum == 2 then
            if Colum_self2[1] == 0 then
                Colum_self2[1] = current_dice
                dice_p1_1_c2_image = current_dice_image
            elseif Colum_self2[2] == 0 then
                Colum_self2[2] = current_dice
                dice_p1_2_c2_image = current_dice_image
            elseif Colum_self2[3] == 0 then
                Colum_self2[3] = current_dice
                dice_p1_3_c2_image = current_dice_image
            end
        end

        if colum == 3 then
            if Colum_self3[1] == 0 then
                Colum_self3[1] = current_dice
                dice_p1_1_c3_image = current_dice_image
            elseif Colum_self3[2] == 0 then
                Colum_self3[2] = current_dice
                dice_p1_2_c3_image = current_dice_image
            elseif Colum_self3[3] == 0 then
                Colum_self3[3] = current_dice
                dice_p1_3_c3_image = current_dice_image
            end

        end

    end
    turn = 0
end

dice_roll()
dice_p1_2_c1_image = love.graphics.newImage("Images/Blank.png")
dice_p1_1_c1_image = love.graphics.newImage("Images/Blank.png")
dice_p1_3_c2_image = love.graphics.newImage("Images/Blank.png")
dice_p1_2_c2_image = love.graphics.newImage("Images/Blank.png")
dice_p1_1_c2_image = love.graphics.newImage("Images/Blank.png")
dice_p1_3_c1_image = love.graphics.newImage("Images/Blank.png")
dice_p1_3_c3_image = love.graphics.newImage("Images/Blank.png")
dice_p1_2_c3_image = love.graphics.newImage("Images/Blank.png")
dice_p1_1_c3_image = love.graphics.newImage("Images/Blank.png")
function love.draw()
    love.graphics.draw(colum_image,400,300)
    love.graphics.draw(colum_image,310,300)
    love.graphics.draw(colum_image,220,300)
    love.graphics.draw(dice_p1_1_c1_image,219,288)
    love.graphics.draw(dice_p1_2_c1_image,219,362)
    love.graphics.draw(dice_p1_3_c1_image,219,436)
    love.graphics.draw(dice_p1_1_c2_image,309,288)
    love.graphics.draw(dice_p1_2_c2_image,309,362)
    love.graphics.draw(dice_p1_3_c2_image,309,436)
    love.graphics.draw(dice_p1_1_c3_image,399,288)
    love.graphics.draw(dice_p1_2_c3_image,399,362)
    love.graphics.draw(dice_p1_3_c3_image,399,436)
    love.graphics.draw(current_dice_image,600,300)


end
