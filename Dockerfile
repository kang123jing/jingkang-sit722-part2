# Dockerfile for book_catalog microservice
FROM python:3.10
ADD book_catalog $PWD
RUN pip install  -r $PWD/requirements.txt
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]