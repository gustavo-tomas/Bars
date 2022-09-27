window=$(xdotool getwindowfocus getwindowname | tr -d '"' | awk -F'[=—-]' '{print $NF}')
echo ${window:0:50}
