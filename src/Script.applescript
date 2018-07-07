on run(argv)
	tell application "iTunes"
		if exists current track then
			set currentTrackName to name of current track
			if loved of the current track is true then
				set loved of current track to false
				display notification "“" & currentTrackName & "” unloved ♡."
			else
				set loved of the current track to true
				display notification "“" & currentTrackName & "” loved ♥."
			end if
		else
			display notification "No track is currently playing."
		end if
	end tell
end run