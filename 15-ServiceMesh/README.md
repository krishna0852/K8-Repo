Service Mesh:

A service mesh is an management layer that ensures secure, reliable, and efficient communication between microservices. It handles traffic control, security, and observability without requiring changes to the services.

                  1) Istio
                  2) Linkerd

Follow Istio documentation to Install Istio into you kubernetes cluster 

     Try to deploy the appliction which isto provide in the documentation


VirtualService:

  Virtual services in Istio define how incoming requests to a service should be routed to different versions or subsets of that service. They enable sophisticated traffic management strategies like A/B testing and canary deployments.

Destination Rules
  
  Destination rules in Istio configure the traffic policies applied to the traffic destined for a particular service version or subset. They define things like load balancing algorithms, circuit breaking settings, and TLS settings for communication between services.

mTLS (Mutual TLS)
  
  Mutual TLS in Istio ensures secure communication between services by requiring both the client and the server to present a valid TLS certificate. It encrypts traffic and provides authentication, preventing unauthorized access or eavesdropping.

Gateways
 
 Gateways in Istio allow external traffic to enter the service mesh. They act as ingress and egress points for traffic, enabling communication between services inside the mesh and external clients or services outside the mesh.




 =========================== 

 Once you deploy the application by following the steps in istio documentation. try below activities.
                          
 Traffic Managment:
     1) create a virtualservice yaml file to route the traffic to base version v1 of all micorservices. eg: 15-ServiceMesh/TrafficManagement/01-virtualServices-basic.yaml 
     
     2) create a destination yaml file eg.15-ServiceMesh/TrafficManagement/DestrinationRules.yaml

     3) Then apply shift traffic yaml  to which version you want to route the traffic based on weight
         eg: 15-ServiceMesh/TrafficManagement/shift-traffic/01-shift-traffic.yaml