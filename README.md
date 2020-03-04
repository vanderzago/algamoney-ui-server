# algamoney-ui-server

* Fazer o build do código ui
 * acessar diretorio do front
 * npm install
 * ng build --environment=docker
* Copiar o conteudo do dist para o diretorio src/dist
* Copiar o arquivo server.js para o diretorio src

docker build -t algamoney-ui-server .
docker run --rm --name algamoney-ui-server -p 8000:8000 -d algamoney-ui-server
docker logs algamoney-ui-server -f
docker stop algamoney-ui-server
