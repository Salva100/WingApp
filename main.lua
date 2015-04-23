composer = require( "composer" )

display.setStatusBar( display.HiddenStatusBar )
system.setIdleTimer( false ) -- para no apagar la pantalla

centerX = display.contentWidth/2
centerY = display.contentHeight/2

composer.gotoScene ( "menu", { effect = "fade"} )

------HANDLE SYSTEM EVENTS------
function systemEvents(event)
   print("systemEvent " .. event.type)
   if ( event.type == "applicationSuspend" ) then
      print( "suspending..........................." )
   elseif ( event.type == "applicationResume" ) then
      print( "resuming............................." )
   elseif ( event.type == "applicationExit" ) then
      print( "exiting.............................." )
   elseif ( event.type == "applicationStart" ) then
      print( "starting.............................." )     
   end
   return true
end

Runtime:addEventListener( "system", systemEvents )

