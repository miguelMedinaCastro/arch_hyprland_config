current=$(hyprctl activeworkspace -j | jq '.id')
prev=$((current - 1))

if ["$prev" -gt 0]; then
   hyprctl dispatch workspace $prev
fi
