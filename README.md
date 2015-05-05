# Ubuntu Vivid/Trusty Supervisord 2nd Edition

Ubuntu Vivid/Trusty images with sshd, supervisord and locale en_US.UTF-8.

## Overview

Ubuntu Vivid/Trusty images with :  

+ sshd
+ supervisord
+ locale en_US.UTF-8
+ language-pack-en language-pack-en-base
+ mysql-client

built on the top of formal Ubuntu images.

## TAGS

+ latest - vivid
+ vivid
+ trusty

## Pull Image

```
$ sudo docker pull classcat/ubuntu-supervisord2
```

## Usage

```
$ sudo docker run -d --name (container name) -p 2022:22 \  
  -e ROOT_PASSWORD=(root password) classcat/ubuntu-supservisord2
```

### example

```
$ sudo docker run -d --name myubuntu -p 2022:22 \  
  -e ROOT_PASSWORD=mypassword classcat/ubuntu-supervisord2

$ sudo docker run -d --name myubuntu -p 2022:22 \  
  -e ROOT_PASSWORD=mypassword classcat/ubuntu-supervisord2:trusty
```
