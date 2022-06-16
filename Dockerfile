FROM python
WORKDIR /home/python/app
COPY Pine64RGBController.py .
RUN python -m pip install --upgrade pip
RUN pip install RPi.GPIO
CMD python Pine64RGBController.py