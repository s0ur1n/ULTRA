# Развёртывание на Render (бесплатно)

ВАЖНО: на бесплатном Render диск временный. После каждого перезапуска или обновления
база сбрасывается к тестовым данным, а загруженные фото пропадают. Сайт засыпает после
15 минут без посетителей, первое открытие потом занимает 30-60 секунд.

## 1. Залейте проект на GitHub
1. Распакуйте ULTRA-render.zip.
2. Откройте https://github.com/DNA476/ULTRA -> Add file -> Upload files.
3. Перетащите ВСЁ содержимое папки ULTRA-master (папки и файлы, включая build.sh и render.yaml).
4. Внизу нажмите Commit changes.

## 2. Создайте сайт на Render
1. Зайдите на https://render.com и войдите через GitHub (Sign in with GitHub).
2. New + -> Web Service -> выберите репозиторий DNA476/ULTRA -> Connect.
3. Заполните поля:
   - Language: Python 3
   - Build Command: bash build.sh
   - Start Command: gunicorn ULTRA.wsgi:application
   - Instance Type: Free
4. Раздел Environment Variables, добавьте четыре переменные:
   - PYTHON_VERSION = 3.12.8
   - DJANGO_SECRET_KEY = любая длинная случайная строка
   - DJANGO_DEBUG = False
   - SERVE_MEDIA = True
5. Нажмите Create Web Service и подождите 3-6 минут, пока идёт сборка.
6. Ссылка вида https://ultra-agency.onrender.com появится вверху страницы сервиса.

## Вход
Логин admin, пароль Ultra12345! (также director, booker, scout).
