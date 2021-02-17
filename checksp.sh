# script for checking an Untis substitution plan, using w3m and various (GNU) utilities (requires fitting plan format)
# (could be used for e.g. as a cronjob)

# LINKTOPLAN = use the direct link to the plan (ends on .htm)
# CLASS = your class
sp=$(w3m LINKTOPLAN | grep -A 1 CLASS | awk '{print $2, $3}' | grep -)&&

#THEDATE = the day of the plan (for e.g. Tomorrow) 
notify-send -t -1 "Your classes for THEDATE" "$sp"

#end
