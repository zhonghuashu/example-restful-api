example-restful-api
=================================
Client / server appliction based on RESTful API to transmit simple data.

## shell
- `netcat`（简称 nc）是一个功能强大的网络工具，常用于在命令行下进行 TCP 或 UDP 端口的读写操作.
```shell
# Start server application using netcat listen on port 8080 or other ports.
$ ./server.sh
POST / HTTP/1.1
Host: 127.0.0.1:8080
User-Agent: curl/8.5.0
Accept: */*
Content-Length: 25
Content-Type: application/x-www-form-urlencoded

alarm=fire&level=critical

# Check opened ports is started.
$ netstat -tunlp | grep 8080

# Simple RESTful API client using curl.
$ ./client.sh

```