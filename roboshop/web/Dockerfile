FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html \
    && rm -rf /etc/nginx/nginx.conf \
    && rm -rf /etc/nginx/conf.d/default.conf
RUN groupadd --system web && useradd --system --no-create-home --gid web web_user
COPY roboshop.conf /etc/nginx/nginx.conf
ADD web /usr/share/nginx/html/
USER web_user
