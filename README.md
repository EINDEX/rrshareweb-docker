# rrshare-docker
人人影视 Docker 镜像，压缩后仅有 12 MB 左右。

纯净人人影视镜像，通过 CI 保持自动更新。

## 快速尝试

```bash
docker run --rm -p 3001:3001 -v <path-to-data>:/opt/work/rrshareweb/data -v <path-to-conf>:/opt/work/rrshareweb/conf eindex/rrshareweb
```

## Docker Compose 样例

```yaml
version: "3"
services: 
  rrshareweb:
    image: eindex/rrshareweb:x86_64
    ports: 
      - 3001:3001
    volumes: 
      - "<path to data>:/opt/work/rrshareweb/data"
      - "<path to conf>:/opt/work/rrshareweb/conf"
    restart: always
    
```