APP_NAME=Laravel
PHP_BASH=repositoryPatern_php
DB_BASH=repositoryPatern_db

build: # build the project
	docker-compose -f docker-compose.yml up -d --build

start: # start the project
	docker-compose up -d

stop: # stop the project
	docker-compose stop

bash_php: # run the php bash script and  move to the project directory
	docker exec -it ${PHP_BASH} bash

bash_root_php: # run the php bash script
	docker exec -it -u root $(PHP_BASH) bash

bash_db: # run the db bash script
	docker exec -it $(DB_BASH) bash

create_app:
	docker exec -it $(PHP_BASH) bash -c "cd /var/www/html && composer create-project laravel/laravel myApp"

set_key_app: # set the key for the app
	docker exec -it $(PHP_BASH) php artisan key:generate

update_composer: # update the composer
	docker exec -it $(PHP_BASH) composer update

copy_env: # copy the .env file
	docker exec -it $(PHP_BASH) cp .env.example .env

jwt_key: # generate the jwt key
	docker exec -it $(PHP_BASH) php artisan jwt:secret

migrate: # migrate the database
	docker exec -it $(PHP_BASH) php artisan migrate:refresh  --seed

wipe:
	docker exec -it $(PHP_BASH) php artisan db:wipe
