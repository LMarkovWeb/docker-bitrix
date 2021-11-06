# Docker-окружение для CMS Битрикс

## Установка

```bash
./build_env.sh
```

```bash
docker-compose up -d
```

## Описание

Docker-файлы:  
mysql/Dockerfile  
nginx/Dockerfile  
php-fpm/Dockerfile

Папка data. После запуска окружения будет содержать
подпапки logs, mysql, php_sessions

В папке www будут файлы проекта на Битриксе.

## Ссылки

1. [Битрикс в связке Nginx+PHP-FPM, настройка ЧПУ, а так же композитный кэш с отдачей через nginx](https://habr.com/ru/post/438604/ "Статья на habr.com")
