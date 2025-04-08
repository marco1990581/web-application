FROM nginx:alpine
COPY . /usr/share/nginx/html
# Configure nginx for metrics
RUN echo 'server {     listen 80;     location / {         root /usr/share/nginx/html;     }     location /metrics {         stub_status on;     } }' > /etc/nginx/conf.d/default.conf
HEALTHCHECK --interval=30s CMD wget -q -O- http://localhost/health.json || exit 1
