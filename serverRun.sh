export USERPROFILE=${HOME}/
php bin/console doctrine:database:create --if-not-exists 2>NUL
php bin/console doctrine:schema:drop --force
php bin/console doctrine:schema:create
php -S localhost:8000 -t public