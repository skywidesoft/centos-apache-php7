FROM centos
MAINTAINER Clarence Ho<clarence@skywidesoft.com>

# Install Apache and PHP packages
RUN yum upgrade -y \
    && yum install -y httpd \
    && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
    && yum install -y php70w php70w-opcache php70w-gd php70w-imap php70w-intl php70w-mbstring php70w-mcrypt php70w-mysql php70w-pear \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

COPY httpd.conf /etc/httpd/conf

# Start Apache
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
