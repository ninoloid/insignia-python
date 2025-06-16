FROM python:3.13-slim

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src

EXPOSE 5000

CMD ["flask", "--app", "src/app.py", "run"]