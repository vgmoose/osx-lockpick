tell application "Finder"
	set app_path to (POSIX path of (choose file with prompt "Select the application that you would like to run.") & "Contents/MacOS/")
		set file_list to (list folder app_path)
			
				if length of file_list is 1 then
						set binary to first item of file_list
							else
									set binary to {choose from list file_list}
										end if
											
												do shell script "\"" & app_path & binary & "\""
												end tell
