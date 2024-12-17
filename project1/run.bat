@echo off

REM Check if virtual environment directory exists
IF NOT EXIST "venv" (
    REM Create virtual environment if it does not exist
    python -m venv venv
)

REM Activate the virtual environment
call venv\Scripts\activate

REM Install dependencies (you can add more as necessary)
echo Installing dependencies...

pip install uv
uv pip install Django
pip install gunicorn
pip install psycopg2
pip install pillow
pip install djangorestframework

REM Run Django development server
echo Starting Django server...
python manage.py runserver
