txt="yes please"
echo "Please type \"$txt\" to $1..."
read inp
if [[ "$txt" != "$inp" ]]; then
  echo "Nice to hear you changed your mind."
  exit 1
fi
