#!/bin/bash

# 사용자 홈 디렉터리가 있는 기본 경로
BASE_DIR="/home"

# /etc/skel 경로
SKEL_DIR="/etc/skel"

# 홈 디렉터리 내 사용자들에 대해 반복 작업 수행
for user_home in "$BASE_DIR"/*; do
    # 디렉터리인지 확인
    if [ -d "$user_home" ]; then
        # 사용자 이름 추출
        username=$(basename "$user_home")

        # /etc/skel의 파일 복사
        cp -r "$SKEL_DIR"/. "$user_home/"

        # 소유자 및 그룹 설정
        chown -R "$username:$username" "$user_home"

        # 권한 설정
        find "$user_home" -type d -exec chmod 750 {} \;  # 디렉터리: 750
        find "$user_home" -type f -exec chmod 644 {} \;  # 일반 파일: 644
        find "$user_home" -type f \( -name "*.sh" -o -perm -u+x \) -exec chmod 755 {} \;  # 실행 파일: 755
    fi
done
