# kubernete
Minha primeira aplicação usando kubernetes

## Passo 1: Criar um cluster Kubernetes
Para começar, crie um cluster Kubernetes usando o comando abaixo:

k3d cluster create lafuente --servers 3 --agents 3

Isso criará um cluster com 3 servidores e 3 agentes usando o K3d. Certifique-se de ter o K3d instalado em sua máquina antes de executar o comando acima.

## Passo 2: Criar o arquivo pod.yaml
Em seguida, crie o arquivo pod.yaml para criar seu Pod com as 
configurações necessárias. Use o seguinte comando:

kubectl apply -f kubernete/pod.yaml

Isso aplicará as configurações do arquivo pod.yaml ao seu cluster Kubernetes e criará o Pod conforme especificado.

## Passo 3: Criar o arquivo replicaset.yaml
Agora, crie o arquivo replicaset.yaml para gerenciar seu Pod e permitir que ele seja escalonável e mais seguro. Use o seguinte comando:

kubectl apply -f kubernete/replicaset.yaml

Isso aplicará as configurações do arquivo replicaset.yaml ao seu cluster Kubernetes e criará o ReplicaSet para gerenciar o seu Pod.

## Passo 4: Executar a aplicação usando Kubernetes
Por fim, execute sua aplicação usando o Kubernetes e redirecione a porta para acessá-la localmente. Use o seguinte comando:

kubectl port-forward pod/mypod 8080:80

Isso redirecionará a porta 8080 do seu computador para a porta 80 do seu Pod, permitindo que você acesse a aplicação localmente.

Certifique-se de substituir mypod pelo nome correto do seu Pod, caso tenha utilizado um nome diferente no arquivo pod.yaml.


## Rollback
Caso seja necessário reverter as alterações e restaurar os recursos anteriores no Kubernetes e no Docker, siga os passos a seguir:

Certifique-se de ter permissões adequadas para executar os comandos e acessar os recursos no Kubernetes e no Docker.

Tenha cuidado ao realizar o rollback, pois essa ação é irreversível. Verifique se você possui backups ou versões anteriores dos recursos, caso precise restaurá-los.

Este script remove todos os recursos e imagens existentes no Kubernetes e no Docker. Certifique-se de que não há dados importantes nos containers ou volumes antes de executar o script.

Se você não deseja remover determinados recursos ou imagens, você pode ajustar o script removetudo.sh conforme necessário.

Abra um terminal e navegue até o diretório onde o arquivo shell (removatudo.sh) está localizado.

Execute o seguinte comando para iniciar o processo de rollback:

./removatudo.sh

Esse comando irá executar o script removatudo.sh, que removerá os recursos no Kubernetes e no Docker.

Aguarde até que o script seja concluído. Isso pode levar algum tempo, dependendo da quantidade de recursos e imagens que precisam ser removidos.

Após a execução do script, os recursos do Kubernetes, incluindo o ReplicaSet e o Pod, serão removidos. As imagens e containers existentes no Docker também serão removidos, assim como os volumes associados.

Verifique se todos os recursos foram removidos corretamente executando os seguintes comandos:

Para verificar os recursos no Kubernetes:

kubectl get pods

kubectl get replicaset

Para verificar as imagens e containers no Docker:

docker images ls -a 

docker ps -a

docker volume ls


# Obrigado!!

