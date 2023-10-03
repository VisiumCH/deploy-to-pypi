CURRENT_TAG=$(git describe --tags --abbrev=0)
if [CURRENT_TAG]; then
  echo "tag exists"
else
  echo "tag doesn't exist or error in command"
fi