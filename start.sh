if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jkdevil27/evatest.git /evatest
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /evatest
fi
cd /evatest
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
