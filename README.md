# webSIM-build
This contains all the build scripts to build a container from the SIMsalabim and streamlit app to turn it into a web app.

## How to build:
run
```
az acr build --image websim/websim_azure:v1 --registry webdd --file Dockerfile .
```
starting can be done through the azure portal under *container instances*.
