FROM nginx
COPY ./.docker/entrypoint.sh /

COPY ./www /www
COPY ./template /template

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

