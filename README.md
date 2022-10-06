##image information

base image : centos/systemd

##build image

$ docker build -t centos-nginxphpfpm .

##running image

$ docker run -it --privileged --name centosweb -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d -p 80:80 centos-nginxphpfpm
