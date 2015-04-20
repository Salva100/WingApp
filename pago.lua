local scene = composer.newScene()


-- Called when the scene's view does not exist:
function scene:create( event )
	local group = self.view
        
        local btn = display.newImage( group, "images/ico_03.png" )
        btn:translate( centerX, centerY )
        
        
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





