FROM node

RUN npm install -g prisma
RUN npm install nodemon -g
WORKDIR /MyProj-Backend

CMD /bin/bash -c "npm install && prisma deploy && prisma generate && nodemon --inspect ./index.js"