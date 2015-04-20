local scene = composer.newScene()

destinationGlobal = ""

function btnTapMenu(event)
        
        if event.target.destination ~= destinationGlobal then
            composer.gotoScene ( event.target.destination, { effect = "slideRight" } )
        end
        
        destinationGlobal = event.target.destination
	
	return true
end

-- Called when the scene's view does not exist:
function scene:create( event )
	local group = self.view
	local background = display.newImage( group, "images/madera.jpeg")
    	background:translate( centerX, centerY )
        --menufondo =  display.newImage( "images/menufondo.png" )
        --menufondo:translate( centerX, centerY*2 )
        --menufondo :scale(.7, .4)
        btnFactura = display.newImage( "images/ico_01.png" )
        btnFactura:translate( centerX/8, centerY*2 )
        btnFactura:addEventListener("tap", btnTapMenu)
        btnFactura.destination = "factura"
        btnFactura:scale(.2, .2)
        
        btnCuenta = display.newImage( "images/ico_02.png" )
        btnCuenta:translate( centerX/2.5, centerY*2 )
        btnCuenta:addEventListener("tap", btnTapMenu)
        btnCuenta.destination = "cuenta"
        btnCuenta:scale(.2, .2)
        
        btnPago = display.newImage( "images/ico_03.png" )
        btnPago:translate( centerX/1.5, centerY*2 )
        btnPago:addEventListener("tap", btnTapMenu)
        btnPago.destination = "pago"
        btnPago:scale(.2, .2)
        
        btnCupones = display.newImage( "images/ico_04.png" )
        btnCupones:translate( centerX*.95, centerY*2)
        btnCupones:addEventListener("tap", btnTapMenu)
        btnCupones.destination = "cupones"
        btnCupones:scale(.2, .2)
        
        btnOrden = display.newImage( "images/ico_05.png" )
        btnOrden:translate( centerX*1.25, centerY*2 )
        btnOrden:addEventListener("tap", btnTapMenu)
        btnOrden.destination = "orden"
        btnOrden:scale(.2, .2)
        
        btnEncuesta = display.newImage( "images/ico_06.png" )
        btnEncuesta:translate( centerX*1.5, centerY*2 )
        btnEncuesta:addEventListener("tap", btnTapMenu)
        btnEncuesta.destination = "encuesta"
        btnEncuesta:scale(.2, .2)
        
	btnUsuario = display.newImage( "images/ico_07.png" )
        btnUsuario:translate( centerX*1.8, centerY*2 )
        btnUsuario:addEventListener("tap", btnTapMenu)
        btnUsuario.destination = "usuario"
        btnUsuario:scale(.2, .2)
        
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

