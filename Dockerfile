# syntax=docker/dockerfile:1
# This line is specifying the Dockerfile syntax version

FROM node:18-alpine
# This line is specifying the base image. In this case, it's a lightweight version of Node.js version 18.

WORKDIR /app
# This line is setting the working directory inside the container to /app.

COPY . .
# This line is copying the current directory (on the host machine) to the current directory in the container (which is /app, as set by the WORKDIR command).

RUN yarn install --production
# This line is running the yarn install command to install the dependencies for the application. The --production flag tells yarn to only install the dependencies needed for production, not development.

CMD ["node", "src/index.js"]
# This line is setting the default command to run when the container starts. In this case, it's running the node command with the src/index.js file as an argument.

EXPOSE 3000
# This line is exposing port 3000 on the container. This allows external processes to communicate with the application running inside the container.