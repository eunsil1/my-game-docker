FROM nginx:alpine

# 레이블 설정 (관리자 정보 및 설명)
LABEL author="혜나"
LABEL description="My mini game on Docker!"

# 작업 디렉토리 설정 (Nginx의 기본 웹 루트)
WORKDIR /usr/share/nginx/html

# 현재 폴더의 모든 파일(게임 소스)을 컨테이너로 복사
COPY . .

# 환경 변수 설정
ENV GAME_NAME="My Mini Game"

# 포트 설정
EXPOSE 80
