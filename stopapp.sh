#! /bin/bash
kubectl delete all --all --namespace default
#kubectl delete persistentvolumeclaim mongo-pvc
kubectl delete persistentvolumeclaim nginx-ssl-pvc

WEB_PID=$(cat /tmp/webapp.pid)
MONGOEXPRESS_PID=$(cat /tmp/mongoexpress.pid)

echo "Stopping port forwarding . . ."
kill $WEB_PID
kill $MONGOEXPRESS_PID
rm /tmp/webapp.pid /tmp/mongoexpress.pid

exit 0
