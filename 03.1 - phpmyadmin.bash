phpmyadmin:5.2.0-apache

docker container run `
--name phpmyadmin `
-d `
-e PMA_ARBITRARY=1 `
-p 8080:80 `
phpmyadmin:5.2.0-apache


# docker container run \
# --name phpmyadmin \
# -d \
# -e PMA_ARBITRARY=1 \
# -p 8080:80 \
# phpmyadmin:5.2.0-apache