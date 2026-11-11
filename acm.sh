#!/bin/bash

# Установка текущей даты и времени в качестве сообщения коммита
timestamp=$(date +"Автокоммит: %Y-%m-%d %H:%M:%S")

# Переход в директорию репозитория (опционально)
# cd /path/to/your/repo

# Добавление всех изменений
echo "🔄 Выполняем git add ."
git add .

# Создание коммита
echo "✅ Выполняем git commit -m \"$timestamp\""
git commit -m "$timestamp"

# Отправка в remote (origin, текущая ветка)
echo "⬆️ Выполняем git push"
git push
