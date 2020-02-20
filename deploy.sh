


#gitstatus=$(git pull | grep "Already up to date.")
#if  gitstatus = "Already up to date"
if [[ $(git pull | grep 'Already up to date.') = *Already* ]]; then 
	 echo "git is already update"
else	
prcoessid=$(ps -ef | grep node | awk '{print $2}')
kill all $prcoessid
kill -9 $prcoessid
npm install
nohup npm start & 
fi
