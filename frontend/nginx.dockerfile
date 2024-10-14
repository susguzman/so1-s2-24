## Build
# docker build -t frontend:0.1.0-nginx-alpine -f nginx.dockerfile .
## Run
# docker run -d -p 8888:80 frontend:0.1.0-nginx-alpine

FROM node:18.17.1-bullseye-slim as compilacion

LABEL name="jesus" \
    email="susguzman@gmail.com"

COPY . /opt/app

WORKDIR /opt/app

ARG REACT_APP_BACKEND_BASE_URL=http://localhost:3800

RUN npm install

RUN npm run build

FROM nginx:1.25.2-alpine

COPY --from=compilacion /opt/app/build /usr/share/nginx/html

EXPOSE 80
