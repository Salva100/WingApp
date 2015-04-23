local scene = composer.newScene()
local widget = require( "widget" )
local imagenProducto = {}
selecupo={}

scrollView = widget.newScrollView
{
    top = (centerY/10)*3 ,
    width = centerX*2,
    height = centerY+ centerY/2,
    scrollWidth = 300,
    scrollHeight = 10,
    horizontalScrollDisabled=true,
    listener = scrollListener
}
--objetoseleccionado=nil
-- Called when the scene's view does not exist:
local function btcupo(event)

        --ruta=object.ruta
      	objetoseleccionado=event.target
        ruta=event.target.destination
   composer.showOverlay( "cupones2" ,{isModal = true } )
   
         	
      
 
	
end


function scene:create( event )
	local group = self.view
        
       local background = display.newImage( group, "images/madera.jpeg")
    	background:translate( centerX, centerY )
    	local fondoscroll= display.newImage( group, "images/madera2.jpeg")
    	fondoscroll:scale(1,2)
    	scrollView:insert(fondoscroll )
    	local texto =  display.newImage( group, "images/textocupon2.png")
        texto:translate( centerX, centerY/10)


       	 for count = 1, 5 do
       	 	--temp = math.random(1,5)
         imagenProducto[count] = display.newImage(group,"images/cupon"..count..".png")
         imagenProducto[count].x = centerX-- (((centerX*2)/17)*(count*2))-(centerX/17)
         imagenProducto[count].y = ((centerY/10)*7 )*(count-1)+centerY/3
         imagenProducto[count].myName = count
         imagenProducto[count].number=totalelementos
      	 imagenProducto[count].ruta="images/cupon"..count..".png"
        imagenProducto[count]:addEventListener("tap", btcupo)
        imagenProducto[count].destination = "images/cupon"..count..".png"
        --imagenProducto[count].touch=btcupo
       -- imagenProducto[count]:addEventListener( "touch", imagenProducto[count] )

     	
     	
         
     end

     for key,cupon in ipairs(imagenProducto) do 
     	scrollView:insert(cupon)
     end
    scrollView : setScrollHeight (  centerY*3.5  )

     group:insert(scrollView)

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





