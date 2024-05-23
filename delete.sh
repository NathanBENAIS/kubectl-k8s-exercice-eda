kubectl delete -f rabbitmq-cluster.yml

cd rabbit-receiver
docker rmi nathanbenais/rabbit-receiver

kubectl delete -f rabbit-receiver-hpa.yaml
kubectl delete -f rabbit-receiver-deployment.yaml





