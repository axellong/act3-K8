echo Eliminando servicios
kubectl delete -n axel-2-namespace service loadbalancer-ac3-mongo
kubectl delete -n axel-2-namespace service loadbalancer-ac3-mysql
kubectl delete -n axel-2-namespace service loadbalancer-ac3-redis
kubectl delete -n axel-2-namespace service loadbalancer-ac3-postgres

echo Eliminando deployment
kubectl delete -n axel-2-namespace deployment mysql-ac3-deploy
kubectl delete -n axel-2-namespace deployment mongo-ac3-deploy
kubectl delete -n axel-2-namespace deployment redis-ac3-deploy
kubectl delete -n axel-2-namespace deployment postgres-ac3-deploy

echo Eliminando reclamos de volumen
kubectl delete -n axel-2-namespace persistentvolumeclaim pvc-act3-mongo
kubectl delete -n axel-2-namespace persistentvolumeclaim pvc-act3-mysql
kubectl delete -n axel-2-namespace persistentvolumeclaim pvc-act3-redis
kubectl delete -n axel-2-namespace persistentvolumeclaim pvc-act3-postgres


echo Eliminando volumenpersistente
kubectl delete persistentvolume pv-act3-mongo
kubectl delete persistentvolume pv-act3-mysql
kubectl delete persistentvolume pv-act3-redis
kubectl delete persistentvolume pv-act3-postgres



echo Eliminando storageclass
kubectl delete storageclass mongo-storage
kubectl delete storageclass mysql-storage
kubectl delete storageclass redis-storage
kubectl delete storageclass postgres-storage


echo configmap
kubectl delete -n axel-2-namespace configmap mongo-config
kubectl delete -n axel-2-namespace configmap mysql-config
kubectl delete -n axel-2-namespace configmap redis-config
kubectl delete -n axel-2-namespace configmap postgres-config