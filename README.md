Create infrastructure pipeline to run terraform with jenkins

```
$ docker run --name jdocker -p8080:8080 -d -v /var/run/docker.sock:/var/run/docker.sock  -v /usr/bin/terraform:/usr/bin/terraform jdocker

```

task

Create ansible script to configure application ec2(private)

8. configure ansible to run over private ips through bastion (~/.ssh/config)

9. write ansible script to configure ec2 to run  as jenkins slaves

9. configure slave in jenkins dashboard (with private ip)

10. create pipeline to deploy nodejs_example fro branch (rds_redis)

11. add application load balancer to your terraform code to expose your nodejs app on port 80 on the load balancer

12. test your application by calling loadbalancer_url/db and /redis

13. create documentation illustrating your steps with screenshots
