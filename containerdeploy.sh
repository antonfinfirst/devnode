
version=$1
docker stop nodecontainer
docker rm nodecontainer
docker build . 
docker run -p 8080:8080 --name nodecontainer -itd node

sleep 5
curl -LI http://localhost:8080 -o /dev/null -w '%{http_code}\n' -s

if [ $(curl -LI http://localhost:8080 -o /dev/null -w '%{http_code}\n' -s) -eq 200 ]; then
     
    echo "deployment is successfull"

    else
  
    echo "deployment is not successfull"

fi

docker tag node:latest node:$version
