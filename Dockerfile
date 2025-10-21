FROM ubuntu:latest
LABEL authors="wrkshim"

ENTRYPOINT ["top", "-b"]

# 1. Nginx 웹서버 이미지를 기반으로 시작합니다.
FROM nginx:alpine

# 2. 현재 폴더의 모든 발표 자료 파일들을 웹서버의 기본 폴더로 복사합니다.
COPY . /usr/share/nginx/html

# 3. 80번 포트를 외부에 노출합니다.
EXPOSE 80