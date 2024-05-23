kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"
kubectl apply -f rabbitmq-cluster.yml

cd rabbit-receiver
docker build -t nathanbenais/rabbit-receiver .
docker push nathanbenais/rabbit-receiver


kubectl apply -f rabbit-receiver-deployment.yaml
kubectl apply -f rabbit-receiver-hpa.yaml
# cd ..
# kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"



