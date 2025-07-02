# Шаг 1: Берем официальный образ Jenkins за основу
FROM jenkins/jenkins:lts-jdk17

# Шаг 2: Переключаемся на пользователя root, чтобы иметь права на установку
USER root

# Шаг 3: Устанавливаем Python, pip И СРАЗУ ЖЕ ANSIBLE
RUN apt-get update && apt-get install -y python3 python3-pip ansible

# Шаг 4: Возвращаемся обратно на пользователя jenkins для безопасности
USER jenkins
