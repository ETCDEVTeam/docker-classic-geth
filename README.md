
```
docker run -it
```

```
docker run -it --fast --rpc --rpc-domain 0.0.0.0
```

## Using Volumes
To persist downloaded blockchain data between container starts, use Docker [volumes](https://docs.docker.com/storage/volumes/).

```
docker volume create ethereum-classic

docker run -it -v ethereum-classic:/root/.ethereum-classic <name of etc image>
```
