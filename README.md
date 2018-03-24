## Nheqminer CPU whit Ubuntu
-----

### Run

#### Nicehash
```
docker run -ti --rm --name Bitcoin-cpu \
-e POOL="equihash.usa.nicehash.com" \
-e PORT="3357" \
-e USER="3PThBqHfb1UVcZaZXtPAY4SC4fZNBNqCs7.1uvr3z" \
-e CORES="$(nproc)" \
izone/nheqminer
```

#### Zcash.flypool
```
docker run -ti --rm --name Bitcoin-cpu \
-e POOL="eu1-zcash.flypool.org" \
-e PORT="3333" \
-e USER="t1UuXA2PPFHjzJJ4xjrUE4WkzAZp4HyNims.1uvr3z" \
-e CORES="$(nproc)" \
izone/nheqminer
```

#### Build
```
docker build -t izone/nheqminer .
```
```
docker build -t izone/nheqminer:build -f Dockerfile_build .
```

