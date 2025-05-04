# OSCP / HTB 문제

## 문서

문서는 상단의 [Wiki](./wiki) 확인


## HTB 테스트용 컨테이너

### 환경
필요한 도구만 포함하고 최신 버전의 도구를 유지하기 위해 Blackarch 배포판을 이용

ㄴ

### 컨테이너 구축
1. Build docker and execute
    ```shell
    docker compose build
    docker compose up -d
    docker exec -it blackarch /bin/bash
    ```
2. Copy `-.ovpn` into `\\wsl.localhost\docker-desktop\run\rootfs.upper\opt\mydata\`
3. Run `# openvpn /opt/mydata/-.ovpn`


### f
