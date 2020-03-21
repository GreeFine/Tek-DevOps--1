FROM node:12 as build

WORKDIR app

COPY . /app

RUN yarn
RUN yarn test
RUN yarn build

FROM nginx:1.17 as serve

COPY --from=build /app/build/ /usr/share/nginx/html

CMD /bin/bash -c "nginx -g 'daemon off;'"

EXPOSE 80