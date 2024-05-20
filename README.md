
# Ansible kt

Этот репозиторий содержит Ansible playbook и скрипт для развертывания инфраструктурных компонентов.

## Компоненты
- Docker
- Docker-compose
- Git
- Gitlab-runner
- Traceroute

## Установка и использование

### 1. Клонирование репозитория
Клонируйте репозиторий на свою локальную машину:
```bash
git clone https://github.com/ваш_пользователь/ansible-infrastructure-deployment.git
cd ansible-infrastructure-deployment
```

### 2. Запуск Ansible playbook
Убедитесь, что у вас установлен Ansible и настроен инвентарь. Затем запустите playbook:
```bash
ansible-playbook -i <inventory_file> playbook.yml
```
Замените `<inventory_file>` на ваш файл инвентаря.

### 3. Регистрация GitLab runner
Запустите скрипт для регистрации GitLab runner, передав ему необходимые параметры:
```bash
./register_runner.sh <RUNNER_NAME> <TOKEN> <TAG>
```
Замените `<RUNNER_NAME>`, `<TOKEN>` и `<TAG>` на соответствующие значения.

## Пример скрипта регистрации GitLab runner
```bash
RUNNER_NAME=example_runner
TOKEN=example_token
TAG=example_tag

gitlab-runner register --non-interactive \
  --name ${RUNNER_NAME} \
  --url https://gitlab.com \
  --registration-token ${TOKEN} \
  --executor shell \
  --locked=false \
  --tag-list=${TAG} \
  --run-untagged="true"
```
