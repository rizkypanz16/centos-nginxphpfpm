## Image Information

base image : centos/systemd

## Build Image

``` $ docker build -t centos-nginxphpfpm . ```

## Running Image

``` $ docker run -it --privileged --name centosweb -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d -p 80:80 centos-nginxphpfpm ```

## Show PHP info in browser

``` <container_hostip>:<container_port>/info.php ```
