# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Docker

### How to build Docker image ?
First, go into the root folder of your project.
`docker build . -t our-rail-app`
This would create your docker image locally. You can confirm by checking 
its presence at `docker images`.

### How to run the Docker image once Built
`docker run -p 3000:3000 our-rail-app`

This would run our previously built image and run the rail 
server on 3000 port. 

As a consequence, you should be able to query the server with 
for example: 

    `curl -X GET http://0.0.0.0:3000`
