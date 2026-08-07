FROM nginx:latest AS base

COPY <<EOF /usr/share/nginx/html/index.html
<h1>Hello World!</h1>
EOF

FROM base AS extended

RUN <<EOF cat >> /usr/share/nginx/html/index.html
</br>
<h2>Text from my second stage!</h2>
EOF