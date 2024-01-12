FROM python:3.8-slim


#create working directory

WORKDIR ./

#Install Dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python","app.py","--host","127.0.0.1","--port","5000"]
