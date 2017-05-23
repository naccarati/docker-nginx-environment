FROM nginx:stable
MAINTAINER Leonardo Naccarati <leonardonaccarati@gmail.com>

# Install packages for self-signed SSL certificate generation
RUN apt-get update && apt-get install -y -q --no-install-recommends ca-certificates openssl && apt-get clean && rm -r /var/lib/apt/lists/*

# Create certs folder
RUN mkdir /etc/nginx/certs

# Generate self-signed SSL certificate
RUN RNDPASS=$(openssl rand -hex 16) && openssl req -x509 -sha256 -nodes -days 365 -passin pass:$RNDPASS -subj "/C=BR/ST=SP/L=São Paulo/O=Localhost/CN=localhost" -newkey rsa:2048 -keyout /etc/nginx/certs/cert.key -out /etc/nginx/certs/cert.crt

# Expose default ports
EXPOSE 80 443