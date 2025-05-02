current=$(hyprctl activeworkspace -j | jq '.id')
next=$((current + 1))

hyprctl dispatch workspace $next
