# K8-concepts 


kube-api-server: 

The API Server is responsible for receiving requests from clients like kubectl. Upon receiving a request, it validates the input request, performs authentication and authorization checks, and then routes the request to the appropriate components for further processing.


The API server also supports watching resources for changes. For example, clients can establish a watch on specific resources and receive real-time notifications when those resources are created, modified, or deleted. 
        
        eg: watch kubectl get pods

Each component (Kubelet, scheduler, controllers) independently watches the API server to figure out what it needs to do.


scheduler:
 
 The kube-scheduler is responsible for scheduling Kubernetes pods on worker nodes.
 
 When API Server receives a request for Scheduling Pods then the request is passed on to the Scheduler. It intelligently decides on which node to schedule the pod for better efficiency of the cluster.

 When you deploy a pod, you specify the pod requirements such as CPU, memory, affinity, taints or tolerations, priority, persistent volumes (PV),  etc. The scheduler’s primary task is to identify the create request and choose the best node for a pod that satisfies the requirements.


etcd:

Kubernetes is a distributed system and it needs an efficient distributed database like etcd that supports its distributed nature. It acts as both a backend service discovery and a database. You can call it the brain of the Kubernetes cluster.

when you use kubectl to get kubernetes object details, you are getting it from etcd. Also, when you deploy an object like a pod, an entry gets created in etcd.

etcd stores all configurations, states, and metadata of Kubernetes objects (pods, secrets, daemonsets, deployments, configmaps, statefulsets, etc)

etcd stores all objects under the /registry directory key in key-value format. For example, information on a pod named Nginx in the default namespace can be found under /registry/pods/default/nginx

controller manager:

 Controllers are programs that run infinite control loops. Meaning it runs continuously and watches the actual and desired state of objects are running or not. If there is a difference in the actual and desired state, it ensures that the kubernetes resource/object is in the desired state.
       
 Example:
     
     Imagine you create a Deployment in Kubernetes and specify that you want 3 replicas of a pod.
     The Deployment Controller (managed by the Controller Manager) checks the cluster's current state.

                  If there are fewer than 3 pods, it will create new ones.
                  If there are more than 3, it will delete the extra pods.
                  If one of the pods crashes, the Deployment Controller notices and creates a new pod to maintain 3 replicas.
    
    Following is the list of important built-in Kubernetes controllers.

                         Deployment controller 
                         Replicaset controller
                         DaemonSet controller
                         node controller 
                         e.t.c