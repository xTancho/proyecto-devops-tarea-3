FROM node:20.11.1-alpine3.19

WORKDIR /usr/src/app
COPY ./dist ./dist
COPY ./package.json .
COPY ./node_modules ./node_modules
COPY ./api_key.txt /var/jenkins_home/workspace/proyecto-devops-tarea-3_main/api_key.txt
COPY ./api_key.txt /var/jenkins_home/workspace/proyecto-devops-tarea-3_main/dist/api_key.txt
CMD ["node", "dist/index.js"]