# Docker OVF toolkit

## Build docker image locally
```bash
$ docker build -t="qba73/ovftoolkit:0.1" .
```
## Test manually

```bash
$ docker run -it --rm --name ovf qba73/ovftoolkit:0.1 ovftool --version
VMware ovftool 4.2.0 (build-4586971)
```
```bash
$ docker run -it --rm --name ovf qba73/ovftoolkit:0.1 cot --version
Common OVF Tool (COT), version 1.8.0
Copyright (C) 2013-2016 the COT project developers.
```
