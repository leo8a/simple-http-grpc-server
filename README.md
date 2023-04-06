# simple-http-grpc-server

This a very simple demo server that for serving gRPC and HTTP/2 requests from the same container.


## verify server

In order to verify if the server is running properly you may execute the following checks.

```shell
-> curl http://<RUNNING_CONTAINER_IP>:8080/healthz
Hello from the HTTP server!

-> curl http://0.0.0.0:8080/healthz -I
HTTP/1.1 200 OK
Date: Thu, 06 Apr 2023 09:27:55 GMT
Content-Length: 28
Content-Type: text/plain; charset=utf-8
```

```shell
->  ./grpc-health-probe -addr <RUNNING_CONTAINER_IP>:8080
status: SERVING
```

> **Note:** To use the `grpc-health-probe` tool, you may need to download it first from its [release page](https://github.com/grpc-ecosystem/grpc-health-probe#installation).
