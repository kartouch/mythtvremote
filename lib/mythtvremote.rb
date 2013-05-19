require 'socket'

module Mythtvremote

def remote(frontend,port,action,number = nil)
  $action = case action

    when	'channelpriorities'    	then	'jump channelpriorities'    	#	 Channel Recording Priorities					'
    when	'channelrecpriority'   	then	'jump channelrecpriority'   	#	 Channel Recording Priorities
    when	'deletebox'            	then	'jump deletebox'            	#	 TV Recording Deletion
    when	'deleterecordings'     	then	'jump deleterecordings'     	#	 TV Recording Deletion
    when	'flixbrowse'           	then	'jump flixbrowse'           	#	 Netflix Browser
    when	'flixhistory'          	then	'jump flixhistory'          	#	 Netflix History
    when	'flixqueue'            	then	'jump flixqueue'            	#	 Netflix Queue
    when	'guidegrid'            	then	'jump guidegrid'            	#	 Program Guide
    when	'livetv'               	then	'jump livetv'               	#	 Live TV
    when	'livetvinguide'        	then	'jump livetvinguide'        	#	 Live TV In Guide
    when	'mainmenu'             	then	'jump mainmenu'             	#	 Main Menu
    when	'managerecordings'     	then	'jump managerecordings'     	#	 Manage Recordings / Fix Conflicts
    when	'manualbox'            	then	'jump manualbox'            	#	 Manual Record Scheduling
    when	'manualrecording'      	then	'jump manualrecording'      	#	 Manual Record Scheduling
    when	'musicplaylists'       	then	'jump musicplaylists'       	#	 Select music playlists
    when	'mythgallery'          	then	'jump mythgallery'          	#	 MythGallery
    when	'mythgame'             	then	'jump mythgame'             	#	 MythGame
    when	'mythmovietime'        	then	'jump mythmovietime'        	#	 MythMovieTime
    when	'mythnews'             	then	'jump mythnews'             	#	 MythNews
    when	'mythvideo'            	then	'jump mythvideo'            	#	 MythVideo
    when	'mythweather'          	then	'jump mythweather'          	#	 MythWeather
    when	'playbackbox'          	then	'jump playbackbox'          	#	 TV Recording Playback
    when	'playbackrecordings'   	then	'jump playbackrecordings'   	#	 TV Recording Playback
    when	'playdvd'              	then	'jump playdvd'              	#	 Play DVD
    when	'playmusic'            	then	'jump playmusic'            	#	 Play music
    when	'previousbox'          	then	'jump previousbox'          	#	 Previously Recorded
    when	'progfinder'           	then	'jump progfinder'           	#	 Program Finder
    when	'programfinder'        	then	'jump programfinder'        	#	 Program Finder
    when	'programguide'         	then	'jump programguide'         	#	 Program Guide
    when	'programrecpriority'   	then	'jump programrecpriority'   	#	 Program Recording Priorities
    when	'recordingpriorities'  	then	'jump recordingpriorities'  	#	 Program Recording Priorities
    when	'ripcd'                	then	'jump ripcd'                	#	 Rip CD
    when	'ripdvd'               	then	'jump ripdvd'               	#	 Rip DVD
    when	'statusbox'            	then	'jump statusbox'            	#	 Status Screen
    when	'videobrowser'         	then	'jump videobrowser'         	#	 Video Browser
    when	'videogallery'         	then	'jump videogallery'         	#	 Video Gallery
    when	'videolistings'        	then	'jump videolistings'        	#	 Video Listings
    when	'videomanager'         	then	'jump videomanager'         	#	 Video Manager
    when	'viewscheduled'        	then	'jump viewscheduled'        	#	 Manage Recordings / Fix Conflicts

    when	'chanup'              	then	'play channel up'        	    #  Change channel Up
    when	'chandown'	            then	'play channel down'      	    #  Change channel Down
    when  'volume'                then  "play volume #{number}%"      #  Change volume to given percentage value
    when	'channum'	              then	"play channel #{number}"   	  #  Change to a specific channel number
    when	'chanidnum'	            then	"play chanid #{number}"       #  Change to a specific channel id (chanid)
    when	'beginning'	            then	'play seek beginning'    	    #  Seek to the beginning of the recording
    when	'forward'	              then	'play seek forward'      	    #  Skip forward in the video
    when	'backward'	            then	'play seek backward'     	    #  Skip backwards in the video
    when	'pause'	                then	'play speed pause'       	    #  Pause playback
    when	'play'	                then	'play speed normal'      	    #  Playback at normal speed
    when	'stop'	                then	'play stop'              	    #  Stop playback
    when  'menu'                  then  'key m'                       #  Playback menu

    when  'up'                    then  'key up'                      #  Key up
    when  'down'                  then  'key down'                    #  Key down
    when  'right'                 then  'key right'                   #  Key right
    when  'left'                  then  'key left'                    #  Key left
    when  'back'                  then  'key escape'                  #  Key escape
    when  'enter'                 then  'key enter'                   #  Key enter
    when  'spacebar'              then  'key space'                   #  Key space
    when  'backspace'             then  'key backspace'               #  Key backspace

    else



      if action.between?("a","z")
      $action = "key #{action[0]}"

      elsif action.between?("A","Z")
      $action = "key #{action[0]}"

      elsif action.between?("0","9")
      $action = "key #{action[0]}"

      elsif ["#","$","%","&","(",")","*","+","-",".","/",":",";","<","=",">","?","[","]","."].include?("#{action}")
      $action = "key #{action[0]}"
      end
  end



  remote = TCPSocket.open(frontend,port)
  puts $action
  remote.puts $action
  remote.close
end

end


