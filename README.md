# IBA-DevOps-Practicum-Diplom1
1)	Подготовить инфраструктуру для Kubernetes (AWS EKS service) кластера с помощью terraform. Для новой инфраструктуры (dev environment) необходимо создать:
1.1 VPC, subnets и т.д.
1.2 ECR репозиторий.
1.3 EKS cluster с двумя нодами t2.micro.
State файл необходимо хранить в S3, а также state файл должен блокироваться, если вы запускаете terraform код. Весь terraform код должен быть в вашем репозитории. Если происходит push в ваш репозиторий, то сразу же должна запускаться джоба (использовать любой СI инструмент), которая запустит terraform.
