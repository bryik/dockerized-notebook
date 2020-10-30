FROM jupyter/base-notebook

ENV PYTHONUNBUFFERED 1

RUN pip install -U pip

WORKDIR /app

# Install Python dependencies before copying everything else
# to reduce rebuild times.
COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app
