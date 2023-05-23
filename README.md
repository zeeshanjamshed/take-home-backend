## How to get started

Please make sure you have the following installed:

- `php` >= 8.2
- `composer`
- [Docker](https://www.docker.com/products/docker-desktop/).

## Steps to get the application up an running

- Create an .env file with <br />
```cp .env.example .env``` or manually create a file `.env` at root and past contents from `.env.example` file.
- Install dependencies <br />
```composer install```
- Generate application key <br />
```php artisan key:generate```
- Generate JWt secret key <br />
```php artisan jwt:secret```
- Serve the application <br />
```./vendor/bin/sail up```
- Run the migrations <br />
```php artisan migrate```
