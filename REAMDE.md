# kubernete
Minha primeira aplicação usando kubernetes

## Passo 1: Criar um cluster Kubernetes
Para começar, crie um cluster Kubernetes usando o comando abaixo:

k3d cluster create lafuente --servers 3 --agents 3

Isso criará um cluster com 3 servidores e 3 agentes usando o K3d. Certifique-se de ter o K3d instalado em sua máquina antes de executar o comando acima.

## Passo 2: Criar o arquivo pod.yaml
Em seguida, crie o arquivo pod.yaml para criar seu Pod com as configurações necessárias. Use o seguinte comando:
kubectl apply -f pod.yaml

Isso aplicará as configurações do arquivo pod.yaml ao seu cluster Kubernetes e criará o Pod conforme especificado.

## Passo 3: Criar o arquivo replicaset.yaml
Agora, crie o arquivo replicaset.yaml para gerenciar seu Pod e permitir que ele seja escalonável e mais seguro. Use o seguinte comando:
kubectl apply -f replicaset.yaml

Isso aplicará as configurações do arquivo replicaset.yaml ao seu cluster Kubernetes e criará o ReplicaSet para gerenciar o seu Pod.

## Passo 4: Executar a aplicação usando Kubernetes
Por fim, execute sua aplicação usando o Kubernetes e redirecione a porta para acessá-la localmente. Use o seguinte comando:
kubectl port-forward pod/mypod 8080:80

Isso redirecionará a porta 8080 do seu computador para a porta 80 do seu Pod, permitindo que você acesse a aplicação localmente.

Certifique-se de substituir mypod pelo nome correto do seu Pod, caso tenha utilizado um nome diferente no arquivo pod.yaml.


# Obrigado!!

