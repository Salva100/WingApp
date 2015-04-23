local scene = composer.newScene()
local widget = require( "widget" )
function btSi(event)

	objetoseleccionado.isVisible=false

	  composer.removeScene( "cupones2")
       
      --composer.gotoScene ( 	composer.getSceneName( "current" ) )
    	
	
	return true
end
function btNo(event)
        
       
            composer.gotoScene ( event.target.destination, { effect = "slideRight" } )
  
	
	return true
end
function scene:create( event )
	
	local group = self.view
       local fondo =display.newImage( group,"images/madera3.jpeg")
       	fondo:translate( centerX, centerY )
       local cupon= display.newImage( group, ruta)
    	cupon:translate( centerX, centerY-centerY/5 )
    local letras= display.newText(group,"¿Seguro de que desea ocupar este cupon?", centerX, centerY+ centerY/5 , native.systemFont, 16 )
    
    local si=display.newImage( group,"images/si.png")
    si:translate( centerX- centerX/3, centerY + (centerY/5)*2 )
    si:addEventListener("tap", btSi)
    si.destination = composer.getSceneName( "current" )
    local no=display.newImage( group,"images/no.png")
    no:translate( centerX+ centerX/3, centerY + (centerY/5)*2 )

    no:addEventListener("tap", btNo)
     no.destination = "cupones"
         
    
    
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


