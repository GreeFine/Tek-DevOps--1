FROM node

RUN npm install -g prisma
RUN npm install nodemon -g
WORKDIR /MyProj-Backend

#Should copy files

CMD /bin/bash -c "npm install && prisma deploy && prisma generate && node ./index.js"