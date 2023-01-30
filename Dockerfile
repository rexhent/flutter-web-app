FROM python:3.11-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

ENV APP app.py

EXPOSE 5000

CMD ["python", "-m" , "flask", "run", "--host=0.0.0.0"]
# CMD ["python", "app.py"]
