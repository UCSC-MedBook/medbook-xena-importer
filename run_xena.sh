trap stop_container INT

function stop_container() {
    echo "??????"
    docker rm -f xena
    sudo rm -f /home/ubuntu/logs/xena.log
    exit
}

docker run -d --name xena -p 127.0.0.1:7222:7222 -v /home/ubuntu/logs:/logs xena
tail -F /home/ubuntu/logs/xena.log



