# Deploy Nodejs Project To Azure using Custom Docker

**Links and references**
***Ahmed Aboelmagd LinkedIn Profile***
>https://www.linkedin.com/in/ahmedaboelmagd

***YouTube*** 
>https://www.youtube.com/playlist?list=PLn6KNikVi3tkSrFL3dNWnG2czGWxXGcIK 

***GitHub***
>https://github.com/magedo93/nodejsAppWithDocker.git 


**Prerequisites** 
>***Node Js prerequisites*** \
1- Node & NPM (https://nodejs.org) \
2- Visual Studio Code (https://code.visualstudio.com) \
***Docker Prerequisites*** \
1- Install Docker (https://www.docker.com/products/docker-desktop) \
2- Create account on docker website \
***Azure prerequisites*** \
1- Have Azure Account (https://portal.azure.com/#home) \
2- Install Azure CLI (https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) \
3- Install Azure App Service on Visual studio code ([Azure App Service - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azureappservice)) 

**Create Node JS Project** 
>1- npx express-generator nodeDockerApp --view pug \
2- cd nodeDockerApp \
3- npm install \
4- add port configuration \
	const port=7070; \
	app.listen(process.env.PORT || port,()  =>{ \
	 console.log(`App listening on port ${port}`) \
	}) 


**Create Docker File & Build Local Image**
>1- Prepare docker file \
2- Build image docker build --tag nodejsproject . \
3- Run Docker locally

**Prepare  & Push to Azure**
>1- Create resource group \
2- Create container resource registry \
3- Set Image Name docker tag nodejsproject:latest nodejsregistery.azurecr.io/nodejsproject:v1 \
4- Using Azure CLI (Azure Command Line) \
4.1- login az acr login --name nodejsregistry.azurecr.io \
4.2- push image docker push nodejsregistry.azurecr.io/nodejsproject:v1 
