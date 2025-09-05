# Dùng image Tomcat 9 với JDK 17
FROM tomcat:9-jdk17

# Xóa ứng dụng mặc định trong Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy mã nguồn web đã build vào thư mục ROOT
COPY web/ /usr/local/tomcat/webapps/ROOT/

# Mở port 8080
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]