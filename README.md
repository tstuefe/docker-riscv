Outside folder setup

```
shared-root/jdk-jdk/source
           /jdks/...
           /gtest/...
```

1) build docker image

```
docker build -t openjdk-riscv-build .
```

2) run image

```
docker run -it -u 1027:1027 --name ojdk-riscv -v /shared:/shared openjdk-riscv-build
```

3) run build

```
bash ./build-riscv.sh
```



