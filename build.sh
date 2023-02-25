#!/usr/bin/env bash
# exit on error
set -o errexit

python -m pip install pipenv
python -m pipenv sync --system

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
