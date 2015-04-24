local scene = composer.newScene()

local datos, boton


local function onTouch(object, event)
    
    if(object.myName == 1) then
        local alert = native.showAlert( "", "Edita tus datos: ----PRUEBA----", { "OK" }, onComplete )
        
    end
end

local function onComplete( event )
   if event.action == "clicked" then
        local i = event.index
        if i == 1 then
            -- Do nothing; dialog will simply dismiss
        end
    end
end

-- Called when the scene's view does not exist:
function scene:create( event )
	local group = self.view
        
       local bk = display.newRect(group,0,0, display.viewableContentWidth, display.viewableContentHeight)
        bk:setFillColor(0,0,0)
        bk:toBack()        
               
        local background = display.newImage( group, "images/madera.jpeg")
    	background:translate( centerX, centerY - 50)
        background:scale(.5,.5)
        
        local img = display.newImage( group, "images/Marcos.png" )
        img:translate( 75,25 )
        img:scale(.3,.3)
        
        datos= display.newText(group ,"Área Metropolitana", 220,  23, native.systemFont, 20)

        local img2 = display.newImage( group, "images/usuarioX.png" )
        img2:translate( centerX, centerY + 40 )
        img2:scale(.4,.4)


        local lblFeed = display.newText(group,"Miguel Marcos", 220, 3, native.systemFont, 20)

        datos= display.newText(group ,"Nombre", 160,  123, native.systemFont, 20)
        datos= display.newText(group ,"Dirección", 160,  203, native.systemFont, 20)
        datos= display.newText(group ,"Correo electrónico", 160,  283, native.systemFont, 20)
         local txtB = native.newTextField(160, 155, 280, 35)
        txtB.size = 20
        txtB:addEventListener("userInput", txtB)
        group:insert(txtB)
        
         local txtC = native.newTextField(160, 235, 280, 35)
        txtC.size = 20
        txtC:addEventListener("userInput", txtB)
         group:insert(txtC)
         local txtD = native.newTextField(160, 315, 280, 35)
        txtD.size = 20
        txtD:addEventListener("userInput", txtB)
          group:insert(txtD)
        boton = display.newImage( group, "images/editar.png" )
        boton:translate( 220, 63 )
        boton:scale(.4,.4)
        
        boton.myName = 1
        boton.touch = onTouch	
        boton:addEventListener( "touch", boton )
        
        function txtB:userInput( event )

                    if ( event.phase == "began" ) then
                        -- user begins editing defaultField
                        event.target.text = ''
                        lblFeed.text = "Waiting"

                    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
                        -- do something with defaultField text
                        lblFeed.text = event.target.text

                    elseif ( event.phase == "editing" ) then
                        lblFeed.text = event.startPosition
                    end

                end
                
                function bk:tap(event)
                    native.setKeyboardFocus(nil)
                end
                
                bk:addEventListener("tap", bk)

                function txtC:userInput( event )

                    if ( event.phase == "began" ) then
                        -- user begins editing defaultField

                    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
                        -- do something with defaultField text

                    elseif ( event.phase == "editing" ) then
                        lblFeed.text = event.startPosition
                    end

                end
                
                function txtD:userInput( event )

                    if ( event.phase == "began" ) then
                        -- user begins editing defaultField

                    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
                        -- do something with defaultField text

                    elseif ( event.phase == "editing" ) then
                        lblFeed.text = event.startPosition
                    end

                end
                
                function bk:tap(event)
                    native.setKeyboardFocus(nil)
                end
                
                
        
end


-- Called immediately after scene has moved onscreen:
function scene:show( event )
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	local group = self.view

end


-- Called when scene is about to move offscreen:
function scene:hide( event )
	local group = self.view
	
	collectgarbage()

	composer.removeScene( composer.getSceneName( "current" ) )
	
	--Runtime:removeEventListener("enterFrame", update)
	-- INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)
	-- Remove listeners attached to the Runtime, timers, transitions, audio tracks
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroy( event )
	local group = self.view
	
	collectgarbage()
	-- INSERT code here (e.g. remove listeners, widgets, save state, etc.)
	-- Remove listeners attached to the Runtime, timers, transitions, audio tracks

end

---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene---------------------------------------------------------





