FROM python
WORKDIR /home/python/app
RUN python -m pip install --upgrade pip
RUN git clone https://github.com/swkim01/RPi.GPIO-PineA64.git .
RUN python setup.py install
COPY Pine64RGBController.py .
CMD python Pine64RGBController.py