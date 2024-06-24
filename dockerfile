FROM python:3.9.5
ENV PYTHONUNBUFFERED=1
#Actualizar pip.
RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt
# Asignar como directorio de trabajo el directorio raíz del proyecto
WORKDIR /opt/back_end/marvel
COPY . /opt/back_end
#CMD python manage.py runserver 0.0.0.0:8000