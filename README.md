Docker application is created using both basic "deployment file" & using HELM Charts as well.

I] To take our application to run in production environment we  take following actions: -


	I] Package app in docker image
	II] Upload the image to registry
	III] Create Container cluster [ K8 ]
	IV] Deploy application to the cluster 

   (i)  Monitoring of the application and containers is must as if any resource reaches it's threshold value there should be generation of alert which notifies us.             Tools like NAGIOS, Prometheus. [ In docker environment we can do that using "Docker Stats" but alerst are not generated. "Prometheus", "Grafana" tools are there        for monitoring.

   (ii) Use of ConfigMap to keep application code separate from our configuration. This lets us change easily configuration depending on the environment and to
        dynamically change configuration at runtime./ Also docker volumes can be used instaed of copying index file to container [ which I have implemented ].

   (iii) Implementing Loadbalancer service as well.
 
   (iv)  CI/CD Pipeline - We must follow complete agile process before deploying this in production using tools like "Jenkins", "TravisCI", "CircleCI" as : -
   Using Jenkins:---

   (i)   VCS ( Version Control System) [ GIT ]
   (ii)  Building code
   (iii) Testing [ Selenium, Cucumber ]
   (iv)  Deployment [ Ansible, SALTSTACK ]
   (v)   Monitoring [ NAGIOS, Prometheus, Grafana ]


