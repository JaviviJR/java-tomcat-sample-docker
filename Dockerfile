FROM tomcat:10.1

#RUN cp -a **/*.war /usr/local/tomcat/webapps/
ADD **/*.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]