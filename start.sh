if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/Force-Subscribe.git /Force-Subscribe
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Force-Subscribe
fi
cd /Force-Subscribe
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
