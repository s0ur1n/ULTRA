#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py migrate --noinput
# Demo users/data (safe to run repeatedly). Remove this line to start with an empty database.
python manage.py seed_demo_data
mkdir -p media
