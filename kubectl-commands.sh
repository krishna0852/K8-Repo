kubectl run my-nginx-pod --image=nginx  #it will create nginx pod

kubectl expose pod my-nginx-pod --port=80 --target-port=80 --type=NodePort --name=nginx-app



deployment:

kubectl create deployment nginx-deploy --image=nginx  # by default it will run with one replica

kubectl create deployment nginx-deploy --image=nginx --replicas=10  # you can mention n replicas as required

kubectl scale deployment/nginx-deploy --replicas=2 # it will set replica count as 2

kubectl expose deployment nginx-deploy --port=80 --target-port=80 --type=NodePort --name=nginx-app

kubectl rollout restart deployment/nginx-deploy # it will restart the deployment

kubectl delete deployment nginx-deploy # it will delete the deployment

kubectl rollout status deployment/nginx-deploy # it will show the status of deployment

kubectl rollout history deployment/nginx-deploy # it will give the history of deployments

kubectl rollout history deployment/nginx-deploy --revision=1 #it will give the description of particular deployment history

kubectl rollout undo deployment/nginx-deploy # using this you can go back to 1 version behind

kubectl rollout undo deployment/nginx-deploy --to-revision=2 # usng this yu can go back to particualr version 







