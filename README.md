# Docker OVF toolkit

## Build docker image locally

```bash
$ docker build -t="ovftoolkit:0.1.0" . --no-cache
```

## Test manually

```bash
$ docker run -ti --rm custchamps/ovftoolkit:latest /bin/bash
[root@a01d06c7e3f9 /]# python
Python 2.7.5 (default, Sep 15 2016, 22:37:39) 
[GCC 4.8.5 20150623 (Red Hat 4.8.5-4)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
[root@a01d06c7e3f9 /]# python3
Python 3.4.5 (default, Nov  9 2016, 16:24:59) 
[GCC 4.8.5 20150623 (Red Hat 4.8.5-11)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
[root@a01d06c7e3f9 /]# ovftool -v
VMware ovftool 4.2.0 (build-4586971)
[root@a01d06c7e3f9 /]# exit  
```

