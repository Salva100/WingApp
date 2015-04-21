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
        
        local background = display.newImage( group, "images/madera.jpeg")
    	background:translate( centerX, centerY - 50)
        background:scale(.5,.5)
        
        local img = display.newImage( group, "images/Marcos.png" )
        img:translate( 75,25 )
        img:scale(.3,.3)
        
        datos= display.newText(group ,"Miguel Marcos", 220,  3, native.systemFont, 20)
        datos= display.newText(group ,"Área Metropolitana", 220,  23, native.systemFont, 20)
        
        local img2 = display.newImage( group, "images/usuarioX.png" )
        img2:translate( centerX, centerY + 40 )
        img2:scale(.4,.4)
        
        boton = display.newImage( group, "images/editar.png" )
        boton:translate( 220, 63 )
        boton:scale(.4,.4)
        
        boton.myName = 1
        boton.touch = onTouch	
        boton:addEventListener( "touch", boton )
        
        print "miEscena2"
        
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





