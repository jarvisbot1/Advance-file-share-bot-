if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jarvisbot1/Advance-file-share-bot-/Advance-file-share-bot-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-file-share-bot-
fi
cd /Advance-file-share-bot-
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
