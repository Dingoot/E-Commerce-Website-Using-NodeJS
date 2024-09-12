#! /bin/bash

echo "Starting port forwarding..."
kubectl port-forward svc/ecom-web-service 3000:3000 --address 0.0.0.0 &
WEB_PID=$!

kubectl port-forward svc/mongo-express-service 8081:8081 --address 0.0.0.0 &
MONGOEXPRESS_PID=$!

echo $WEB_PID > /tmp/webapp.pid
echo $MONGOEXPRESS_PID > /tmp/mongoexpress.pid
