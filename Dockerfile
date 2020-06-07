FROM python:3
MAINTAINER SNEHA
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD . /app
RUN apt-get update && apt-get install -y \
git 
RUN git clone https://github.com/kumarisneha/address_book.git /app/address_book
RUN cd /app/address_book/addrbookproj && pip install -r requirements.txt
CMD ["/app/start.sh"]
EXPOSE 8000
