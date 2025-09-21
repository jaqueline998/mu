FROM python:3
WORKDIR /home/www

COPY streamlit_app.py .

RUN chmod +x streamlit_app.py && python3 streamlit_app.py init && chmod 777 ./*

EXPOSE 8080

CMD ["python3", "streamlit_app.py"]

USER 10001
