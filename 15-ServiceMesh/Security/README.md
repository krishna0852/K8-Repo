mTLS (Mutual TLS):

By default when you install istio into your kubernetes you can access the pods in two ways.
    1) permissive mode  -> where you can talk without any certificates (TLS)
    2) strict mode --> where you can only talk if you have certificates
  
To enable stirct mode apply the mtLs.yaml file and curl the endpoints and see if you're getting response
