FROM nginx:latest

COPY <<EOF /usr/share/nginx/html/index.html
<h1>Hello World!</h1>
EOF
