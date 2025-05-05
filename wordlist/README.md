### Usage

`cat ./* | sort | uniq | gobuster dir -u target_url -w -`



### Wordlist

#### Tomcat

- WEB-INF
- META-INF
- manager
- host-manager
- examples
- docs : 톰캣 문서 페이지 
- ROOT

#### Weblogic

- WEB-INF
- META-INF
- console/* : 콘솔 페이지
- wls-wsat/* : CVE-2017-3506, CVE-2017-10271 (RCE)
- _async/* : CVE-2019-2725
- uddiexplorer : WebLogic UDDI Explorer 페이지 (InternalInfo Leak, RCE)
- bea_wls_internal :

#### Spring
- actuator/*  (heapdump, threaddump, startup, shutdown 제외) : Boot 관리용 API
- h2-console : 개발환경에서 탐지 가능
- application* : 잘못된 설정에 의한 노출 여부 확인


#### Node.js(Express.js, Next.js)

- /status : express-status-monitor
- /node_modules : 잘못된 설정
- /logs/* : mogan에 의해 생성된 로그
- .env* : dotenv 사용 시 개발자 실수로 포함 가능성

#### Ruby on Railes

- sidekiq : 백그라운드 작업 UI
- rails/info/routes : 라우팅 확인 페이지 (개발환경)
- rails/info/properties : 프로퍼티 확인 페이지 (개발환경)

#### PHP (Laravel, Wordpress, Joomla, Drupal)
- 라라벨
  - storage/logs/laravel.log
  - vendor
  - server.php
  - artisan
  - routes/web.php
  - config
  - debugbar : 디버거 활성화
  - api/documentation
  - docs/api
  - horizon : 큐 모니터링 도구
  - telescope : 큐 모니터링 도구
- 워드프레스
  - wp-admin
  - xmlrpc.php
  - wp-config.php
- Joomla
  - administrator
  - configuration.php-dist : 설정 템플릿 파일 (불필요 파일이긴 한데 굳이 탐지하는게 의미가 있나..?)
- Drupal
  - user/login
  - core
  - sites
  - CHANGELOG.txt

#### Python (Django)
- package_files
- Django
  - admin
  - debug
  - manage,settings,wsgi,asgi.py
- flask
  - app,main,config.py

### General Wordlist

#### Mobile Page
- m
- mobile

#### API DOCS
- swagger
- api-docs
- redoc

#### GraphQL
- graphql
- graphiql
- playground

#### Versioning
- v1 - v3 : 버저닝은 다른 단어와 조합해야 하는 경우가 많지만 일단 추가

### ENV

- .env
- .env.dev
- .env.devel
- .env.development
- .env.stg
- .env.stage
- .env.staging
- .env.prod
- .env.product
- .env.production

#### 기타
- login
- signin
- admin
- adm
- webadmin
- webmaster
- manage
- manager
- test
- debug
- backup
- robots.txt
- .git
- .DS_Store