# 샘플 express 프로젝트

## 프로젝트 도커로 실행
### 1. 이미지 빌드
```shell
docker build -t sample-express .
```

### 2. 이미지 실행
```shell
docker run --rm -p 3000:3000 sample-express
```