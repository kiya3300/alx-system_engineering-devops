# 0x0F. Load balancer

## Table of contents
Files | Description
----- | -----------
[0-custom_http_response-header](./0-custom_http_response-header) | Bash script configuring a brand new Ubuntu server with Nginx so that its HTTP response contains a custom header
[1-install_load_balancer](./1-install_load_balancer) | Bash script configuring a brand new Ubuntu server and adds HAproxy with version equal or greater than 1.5
[2-puppet_custom_http_response-header.pp](./2-puppet_custom_http_response-header.pp) | Puppet manifest configuring a brand new Ubuntu server with Nginx so that its HTTP response contains a custom header
