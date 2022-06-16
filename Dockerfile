FROM python
WORKDIR /home/python/app
COPY Pine64RGBController.py .
RUN git clone https://github.com/swkim01/RPi.GPIO-PineA64.git
RUN pip install RPi.GPIO
CMD python Pine64RGBController.py