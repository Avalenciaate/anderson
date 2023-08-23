FROM httpd
RUN mkdir /anderson-2503285
RUN chmod 777 /anderson-2503285
COPY recursos/img2.jpg /anderson-2503285
COPY main.sh /anderson-2503285
RUN chmod +x /anderson-2503285/main.sh
RUN /anderson-2503285/main.sh
COPY /6/* /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]