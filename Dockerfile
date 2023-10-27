# Container with main dependencies for "The Book Of Shaders"

FROM python:3.9.18-slim-bookworm

USER root

RUN set -eux; apt-get update && apt-get install -y \
    build-essential \
    git-core \
    libglfw3-dev \
    libepoxy-dev \
    libpng-dev \
    libglm-dev \
    libsdl2-dev \
    wget \
    texlive-xetex \
    pandoc \
    cmake \
    make \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

#RUN set -eux; git clone https://github.com/patriciogonzalezvivo/glslViewer.git --depth 1 --branch main \
#    && cd glslViewer && make && make install \
#    && cd .. && rm -rf glslViewer

# Задайте рабочую директорию
WORKDIR /usr/src/app

# Укажите необходимые команды для установки зависимостей Python (если они есть)
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

# Копируйте ваш код в контейнер
#COPY . .

# Запустите ваше приложение (по желанию)
#CMD [ "python3" "src/parseBook.py -f epub" ]