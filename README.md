# Mythtvremote

Mythtv frontend control socket bindings.

## Installation

Add this line to your application's Gemfile:

    gem 'mythtvremote'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mythtvremote

## Usage

<pre>
frontend = Your frontend ip as a string
port = integer (default = 6546 )
action = string ( action from the list)
number = optional option when the action requires it
</pre>
<code>
Mythtvremote::remote('192.168.1.10',6546,'play')
</code>
<code>
Mythtvremote::remote('192.168.1.10',6546,'volume',30)
</code>
##Jump points
<pre>
channelpriorities    	==>	 Channel Recording Priorities
channelrecpriority   	==>	 Channel Recording Priorities
deletebox            	==>	 TV Recording Deletion
deleterecordings     	==>	 TV Recording Deletion
flixbrowse           	==>	 Netflix Browser
flixhistory          	==>	 Netflix History
flixqueue            	==>	 Netflix Queue
guidegrid            	==>	 Program Guide
livetv               	==>	 Live TV
livetvinguide        	==>	 Live TV In Guide
mainmenu             	==>	 Main Menu
managerecordings     	==>	 Manage Recordings / Fix Conflicts
manualbox            	==>	 Manual Record Scheduling
manualrecording      	==>	 Manual Record Scheduling
musicplaylists       	==>	 Select music playlists
mythgallery          	==>	 MythGallery
mythgame             	==>	 MythGame
mythmovietime        	==>	 MythMovieTime
mythnews             	==>	 MythNews
mythvideo            	==>	 MythVideo
mythweather          	==>	 MythWeather
playbackbox          	==>	 TV Recording Playback
playbackrecordings   	==>	 TV Recording Playback
playdvd              	==>	 Play DVD
playmusic            	==>	 Play music
previousbox          	==>	 Previously Recorded
progfinder           	==>	 Program Finder
programfinder        	==>	 Program Finder
programguide         	==>	 Program Guide
programrecpriority   	==>	 Program Recording Priorities
recordingpriorities  	==>	 Program Recording Priorities
ripcd                	==>	 Rip CD
ripdvd               	==>	 Rip DVD
statusbox            	==>	 Status Screen
videobrowser         	==>	 Video Browser
videogallery         	==>	 Video Gallery
videolistings        	==>	 Video Listings
videomanager         	==>	 Video Manager
viewscheduled        	==>	 Manage Recordings / Fix Conflicts
</pre>
<code>
Mythtvremote::remote('192.168.1.10',6546,'videolistings')
</code>
##Playback options
<pre>
chanup              	==>	Change channel Up
chandown	            ==>	Change channel Down
volume [number]         ==> Change the volume to % number
channum	[number]        ==>	Change to a specific channel number
chanidnum [number]	    ==>	Change to a specific channel id (chanid)
beginning	            ==>	Seek to the beginning of the recording
forward	                ==>	Skip forward in the video
backward	            ==>	Skip backwards in the video
pause	                ==>	Pause playback
play	                ==>	Playback at normal speed
stop	                ==>	Stop playback
menu                    ==> Playback menu
</pre>
<code>
Mythtvremote::remote('192.168.1.10',6546,'play')
</code>
##Navigation
<pre>
up	                    ==>	Key up
down	                ==>	Key down
right	                ==>	Key right
left	                ==>	Key left
back	                ==>	Key back
enter	                ==>	Key enter
spacebar	            ==>	Key spacebar
backspace	            ==>	Key backspace
</pre>
<code>
Mythtvremote::remote('192.168.1.10',6546,'up')
</code>
##Keys
<pre>
from a to  z
from A to  Z
from 0 to 9
symbols : #,$,%,&,(,),*,+,-,.,/,:,;,<,=,>,?,[,],.
</pre>
<code>
Mythtvremote::remote('192.168.1.10',6546,'a')
</code>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
