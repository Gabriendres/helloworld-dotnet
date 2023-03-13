FROM mcr.microsoft.com/dotnet/runtime:3.1
EXPOSE 80
COPY ./bin/Debug/netcoreapp3.1/linux-x64/publish/ ./
ENTRYPOINT ["dotnet", "helloworld.dll"]
FROM node:lts-alpine3.16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]