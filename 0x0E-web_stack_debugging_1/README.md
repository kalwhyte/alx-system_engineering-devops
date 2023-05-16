# 0x0E Web stack debugging #1
=============================

-   By Sylvain Kalache

Concepts
--------

*For this project, students are expected to look at these concepts:*

-   [Network basics](https://alx-intranet.hbtn.io/concepts/33)
-   [Web stack debugging](https://alx-intranet.hbtn.io/concepts/68)

![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/271/B4eeypV.jpg)

Requirements
------------

### General

-   Allowed editors: `vi`, `vim`, `emacs`
-   All your files will be interpreted on Ubuntu 20.04 LTS
-   All your files should end with a new line
-   A `README.md` file at the root of the folder of the project is mandatory
-   All your Bash script files must be executable
-   Your Bash scripts must pass `Shellcheck` without any error
-   Your Bash scripts must run without error
-   The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
-   The second line of all your Bash scripts should be a comment explaining what is the script doing
-   You are not allowed to use `wget`

> Debugging is the process of finding and fixing errors in software that prevents it from running correctly. As you become a more advanced programmer and an industry engineer, you will learn how to use debugging tools such as gdb or built-in tools that IDEs have. However, it’s important to understand the concepts and processes of debugging manually. This project covers a second part of the optimal framework and blueprint for debugging web stack (remote containers this scenario) bugs

Challenge:

Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue.


## Tasks :heavy_check_mark: :heavy_check_mark:

0. Bash script with the minimum number of commands to automate your fix.
1. Bash script with the minimum number of commands to automate your fix. v2

Tasks
-----

### 0\. Nginx likes port 80

mandatory

Using your debugging skills, find out what's keeping your Ubuntu container's Nginx installation from listening on port `80`. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.

Requirements:

-   Nginx must be running, and listening on port `80` of all the server's active IPv4 IPs
-   Write a Bash script that configures a server to the above requirements

```
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# ./0-nginx_likes_port_80 > /dev/null 2&>1
root@966c5664b21f:/#
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@966c5664b21f:/#

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x0E-web_stack_debugging_1`
-   File: `0-nginx_likes_port_80`

### 1\. Make it sweet and short

#advanced

Using what you did for task #0, make your fix short and sweet.

Requirements:

-   Your Bash script must be 5 lines long or less
-   There must be a new line at the end of the file
-   You must respect usual Bash script requirements
-   You cannot use `;`
-   You cannot use `&&`
-   You cannot use `wget`
-   You cannot execute your previous answer file (Do not include the name of the previous script in this one)
-   `service` (init) must say that `nginx` is not running ← for real

```
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# cat -e 1-debugging_made_short | wc -l
5
root@966c5664b21f:/# ./1-debugging_made_short
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@966c5664b21f:/#
root@966c5664b21f:/# service nginx status
 * nginx is not running
root@966c5664b21f:/#

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x0E-web_stack_debugging_1`
-   File: `1-debugging_made_short
`
## Results :chart_with_upwards_trend:

| Filename |
| ------ |
| [0-nginx_likes_port_80](./0-nginx_likes_port_80)|
| [1-debugging_made_short](./1-debugging_made_short)|

<!
### Try It On Your Machine :computer:
```bash
git clone https://github.com/kalwhyte/alx-system_engineering-devops.git
cd 0x0E-web_stack_debugging_1
cat FILENAME
curl 0:80
cat -e FILENAME | wc -l
curl 0:80
```
-->
