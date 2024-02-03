FROM python:3.9-slim
WORKDIR app

RUN pip install \
 Flask \
 redis \
 Werkzeug \
 Flask_Injector


ADD *.py ./
CMD python3 tracking.py --reload
