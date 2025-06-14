# Docker-команда FROM вказує базовий образ контейнера
FROM python:3.13-slim

# Встановимо змінну середовища
ENV APP_HOME=/goit-ds-hw-01

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME

# Встановимо залежності всередині контейнера
COPY pyproject.toml $APP_HOME/pyproject.toml
# COPY poetry.lock $APP_HOME/poetry.lock
COPY README.md $APP_HOME/README.md

RUN pip install poetry
RUN poetry config virtualenvs.create false

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Позначимо порт, де працює застосунок всередині контейнера
EXPOSE 3000

# Запустимо наш застосунок всередині контейнера
CMD ["python", "-m", "contact_book.main"]