FROM python
WORKDIR /home/python/app
COPY Pine64RGBController.py .
RUN python -m pip install --upgrade pip
RUN git clone https://github.com/swkim01/RPi.GPIO-PineA64.git
RUN cd RPi.GPIO-PineA64
RUN python setup.py install
CMD python Pine64RGBController.py