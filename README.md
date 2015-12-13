### skywidesoft/centos-apache-php7

A docker image with CentOS 7.1, Apache, PHP7 and some commonly used PHP extension_drivers
(ready for Magento 2 install)

#### Build the image
    docker build -t skywidesoft/centos-apache-php7 .

#### Push the image
    docker push skywidesoft/centos-apache-php7

#### Sample command for run the image
    docker run -p 80:80 -d --name my-apache-php-app --link my-mariadb:dbhost -v /home/core/share:/var/www/html skywidesoft/centos-apache-php7
