FROM python:3.6
LABEL MAINTAINER="Hossein Ahmadipoorr | https://boby.cloud"
ENV PYTHONUNBUFFERED 1
RUN mkdir /blogpy
WORKDIR /blogpy
COPY . /blogpy
ADD requirements/requirements.txt /blogpy
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python manage.py collectstatic --no-input

CMD ["gunicorn", "--chdir", "blogpy", "--bind", ":8000", "blogpy.wsgi:application"]
