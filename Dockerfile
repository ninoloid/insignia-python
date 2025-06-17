FROM python:3.13-slim

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src

EXPOSE 5000

# uncomment this if you want to run directly by dockerfile
# CMD ["flask", "--app", "src/app.py", "run"]