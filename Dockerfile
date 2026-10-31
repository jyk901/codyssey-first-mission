# 베이스: 공식 nginx 경량 이미지 (옵션 A: 웹 서버 베이스 + 정적 콘텐츠 교체)
FROM nginx:alpine
LABEL org.opencontainers.image.title="My-custom-nginx"
ENV APP_ENV=dev
COPY site/ /usr/share/nginx/html/
HEALTHCHECK --interval=10s --timeout=3s CMD wget -qO- http://localhost/ >/dev/null || exit 1
