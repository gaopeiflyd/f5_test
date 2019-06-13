docker rm cluster01-app --force
docker run -d -p 8001:80 -e F5DEMO_APP=website -e F5DEMO_NODENAME='Blue' -e F5DEMO_COLOR=0194d2 --name=cluster01-app f5devcentral/f5-demo-httpd
