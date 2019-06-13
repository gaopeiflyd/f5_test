docker rm cluster02-app --force
docker run -d -p 8002:80 -e F5DEMO_APP=website -e F5DEMO_NODENAME='Green' -e F5DEMO_COLOR=a0bf37 --name=cluster02-app f5devcentral/f5-demo-httpd
