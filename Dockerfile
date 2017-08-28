FROM ubuntu
MAINTAINER SNEHA
RUN apt-get update && apt-get install -y \
git \
python-dev \
python-setuptools \
vim 
RUN easy_install pip
RUN git clone https://github.com/kumarisneha/address_book.git /home/address_book
RUN cd /home/address_book/addrbookproj && pip install -r requirements.txt
COPY start.sh /start.sh
CMD ["/start.sh"]
EXPOSE 8000



