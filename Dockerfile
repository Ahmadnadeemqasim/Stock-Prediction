FROM python:3.8.5

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD requirements.txt ./requirements.txt
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

ADD app.py ./app.py
ADD db.py ./db.py
ADD stocks.db ./ stocks.db
ADD models.py ./models.py
ADD process.py ./process.py
ADD s_models.py ./s_models.py
ADD ticker.xlsx ./ticker.xlsx

COPY .streamlit /root/.streamlit

EXPOSE 80

CMD [ "streamlit", "run", "app.py" ]
