# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xoá các ứng dụng mặc định trong Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ thư mục dist vào Tomcat, đổi tên thành ROOT.war để chạy trực tiếp ở "/"
COPY dist/ch09_ex2_cart.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
