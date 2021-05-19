# Rapidão - Frontend do cardápio

Esse repositório abrange a solução frontend da parte de cardápio do projeto Rapidão 

## Instruções
1. Instale as dependências necessárias. (Ubuntu 20.04)
```bash
sudo apt-get install libgtk-3-0 libblkid1 liblzma5
sudo snap install flutter --classic
```
2. Configure o flutter
```bash
flutter channel beta
flutter upgrade
flutter doctor
echo "export CHROME_EXECUTABLE=\"$(which chromium-browser)\"" >> ~/.bashrc
```
3. Execute a aplicação. Para rodar na web, use o seguinte comando

```
flutter run -d chrome
```

Caso queira rodar em outra plataforma, troque `chrome` pela plataforma desejada (`android`, `ios`, `linux`, `macos`, `windows`)

