local scene = composer.newScene()
  local pregunta
local numpregunta=0
local resp1
local resp2
local resp3
local carita1
local carita2
local carita3
local triste
 local serio
 local feliz

-- Called when the scene's view does not exist:
function colocarrespuesta( res )

	if numpregunta==0 then
		carita1=res
		carita1.x= centerX - centerX/1.2
		carita1.y= centerY+centerY/1.5
		numpregunta=numpregunta+1
     	pregunta.text="¿Qué tal te parecio tu comida?"
		carita1.isVisible=true
	elseif numpregunta==1 then
		carita2=res
		carita2.x= centerX - centerX/2
		carita2.y= centerY+centerY/1.5
		numpregunta=numpregunta+1
     	pregunta.text="¿Los postres fueron de su agrado?"
		carita2.isVisible=true
	elseif numpregunta==2 then
		carita3=res
		carita3.x=  centerX- centerX/6
		carita3.y= centerY+centerY/1.5
		numpregunta=numpregunta+1
     	pregunta.text="Gracias por apoyarnos"
     	pregunta.x=centerX
     	pregunta.y=centerY- centerY/2
     	triste.isVisible=false
     	feliz.isVisible=false
     	serio.isVisible=false

		carita3.isVisible=true
	end
end
function btnTriste( ... )
	if numpregunta== 0 then
	colocarrespuesta(respt1)
	elseif numpregunta == 1 then
	colocarrespuesta(respt2)
	elseif numpregunta == 2 then
		colocarrespuesta(respt3)
	end
end
function btnTapserio( ... )
	if numpregunta== 0 then
	colocarrespuesta(resps1)
	elseif numpregunta == 1 then
	colocarrespuesta(resps2)
	elseif numpregunta == 2 then
		colocarrespuesta(resps3)
	end
end
function btnTapfeliz( ... )
	if numpregunta== 0 then
	colocarrespuesta(respf1)
	elseif numpregunta == 1 then
	colocarrespuesta(respf2)
	elseif numpregunta == 2 then
		colocarrespuesta(respf3)
	end
end
function scene:create( event )
	local group = self.view
        local background = display.newImage( group, "images/madera.jpeg")
    	background:translate( centerX, centerY )
        
       triste =  display.newImage( group, "images/triste.png")
       triste:translate( centerX - centerX/1.5, centerY )
      triste: addEventListener("tap", btnTriste)
        serio =  display.newImage( group, "images/serio.png")
       serio:translate( centerX, centerY )
       serio:addEventListener("tap", btnTapserio)
        feliz =  display.newImage( group, "images/feliz.png")
       feliz:translate( centerX + centerX/1.5, centerY )
       feliz:addEventListener("tap", btnTapfeliz)
     	pregunta= display.newText(group ,"¿Qué tal te atendimos hoy?", centerX,  centerY/2 ,native.systemFont, 20)
     	local respuesta= display.newText(group ,"Respuestas", centerX -centerX/1.5,  centerY+centerY/2 ,native.systemFont, 16)
     	respf1=display.newImage( group, "images/feliz.png")
     	respf2=display.newImage( group, "images/feliz.png")
     	respf3=display.newImage( group, "images/feliz.png")
     	respf1:translate( centerX - centerX/1.2,  centerY+centerY/1.5 )
     	respf1:scale(.5, .5)
     	respf1.isVisible=false
     	respf2:scale(.5, .5)
     	respf2.isVisible=false
     	respf3:scale(.5, .5)
     	respf3.isVisible=false

     	respt1=display.newImage( group, "images/triste.png")
     	respt2=display.newImage( group, "images/triste.png")
     	respt3=display.newImage( group, "images/triste.png")

     	respt1:translate( centerX - centerX/2,  centerY+centerY/1.5 )
     	respt1:scale(.5, .5)
     	respt1.isVisible=false
     	respt2:scale(.5, .5)
     	respt2.isVisible=false
     	respt3:scale(.5, .5)
     	respt3.isVisible=false
     	resps3=display.newImage( group, "images/serio.png")
     	resps2=display.newImage( group, "images/serio.png")
     	resps1=display.newImage( group, "images/serio.png")
     	resps3:translate( centerX- centerX/6, centerY+centerY/1.5 )
     	resps3:scale(.5, .5)
     	resps3.isVisible=false
     	resps2:scale(.5, .5)
     	resps2.isVisible=false
     	resps1:scale(.5, .5)
     	resps1.isVisible=false
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





