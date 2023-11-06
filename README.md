# docker一键部署

- cp ProjectData.sql -> [docker-entrypoint-initdb.d](mysql%2Fdocker-entrypoint-initdb.d)
- docker-compose build
- docker-compose up
- open localhost:80

default php modules:

```
[PHP Modules]
bcmath
Core
ctype
curl
date
dom
fileinfo
filter
ftp
gd
grpc
hash
iconv
json
libxml
mbstring
mcrypt
mongodb
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
protobuf
random
rdkafka
readline
redis
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xdebug
xlswriter
xml
xmlreader
xmlwriter
yaml
Zend OPcache
zlib

[Zend Modules]
Xdebug
Zend OPcache
```
