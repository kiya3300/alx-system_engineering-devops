# 0x10. HTTPS SSL

## Overview
The goal of this project was to learn more about HTTPS SSL and its roles, what the purpose of encrypting traffic is, and what SSL termination means

## Requirements
### Shell Scripts
* Allowed editors: `vi`, `vim`, `emacs`
* All your scripts will be tested on Ubuntu 14.04 LTS
* All your files should end with a new line
* The first line of all your files should be exactly `#!/usr/bin/env bash`
* All your files must be executable

## Tasks
### Mandatory
**[0-https_abc](0-https_abc)** - Answers to the following questions:
```
What is HTTPS?

1. A secure version of HTTP
2. A faster version of HTTP
3. A superior version of HTTP

Why do you need HTTPS?

1. To encrypt credit card and social security number information going between the client and the website servers
2. To encrypt all communication between the client and the website servers
3. To accelerate the communication between the client and the website servers

You want to setup HTTPS on your website, where shall you place the certificate?

1. In a secure location where nobody can access it
2. You can host it anywhere but you have to share the link to it on your website
3. On your website web server(s)
```

**[1-world_wide_web](1-world_wide_web)** - script takes a `domain` as a mandatory argument and a `subdomain` as an optional argument and displays the subdomain, DNS record type, and the IP that it points to. If no subdomain is provided, it shows information for `www`, `lb-01`, `web-01`, and `web-02`.
```
$ ./1-world_wide_web abinet.tech
The subdomain www is a A record and points to 35.231.228.196
The subdomain lb-01 is a A record and points to 35.231.228.196
The subdomain web-01 is a A record and points to 35.237.197.183
The subdomain web-02 is a A record and points to 35.237.134.117

$ ./1-world_wide_web abinet.tech web-01
The subdomain web-01 is a A record and points to 35.237.197.183
```

**[2-haproxy_ssl_termination](2-haproxy_ssl_termination)** - Haproxy configuration file (`/etc/haproxy/haproxy.cfg`) that configures Haproxy to accept encrypted traffic on the subdomain `www.` where Haproxy must be listening on port TCP 443, Haproxy must be accepting SSL traffic, Haproxy must serve encrypted traffic that will return the root of the web server, and a query to the root of the domain should return a page containing `DHK School`.
```
$ curl -sI https://www.abinet.tech
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Thu, 02 Aug 2018 05:12:55 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Thu, 02 Aug 2018 04:06:38 GMT
ETag: "5b62834e-1e"
X-Served-By: 300-web-02
Accept-Ranges: bytes

$ curl -s https://www.abinet.tech
DHK School for the win!
```

### Advanced
**[100-redirect_http_to_https](100-redirect_http_to_https)** - Haproxy configuration file that configures Haproxy to automatically redirect http traffic to https. Haproxy should return a 301
```
$ curl -sIL http://www.dhk.online
HTTP/1.1 301 Moved Permanently
Content-length: 0
Location: https://www.dhk.online/
Connection: close

HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 28 Feb 2017 02:19:18 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes
```

2018 - All programs written by Derek Kwok ([@dlangshk](https://twitter.com/dlangshk)) at [DHK School](https://www.dhkschool.com/)
