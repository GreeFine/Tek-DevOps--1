FROM node
WORKDIR /MyProj-Frontend
CMD /bin/bash -c "npm run-script start"
EXPOSE 80