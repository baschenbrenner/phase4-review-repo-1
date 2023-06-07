## Overview
Like That is an application designed for users to rate and review skincare products. This app is built with a React frontend and a Ruby-on-Rails backend. It uses sqlite3 as the database manager. 
It was built by Lizzie Anthony for her phase 4 project. Ben Aschenbrenner forked and cloned it and made some changes and updates to make it a suitable tool for teaching and learning. 

Running the Application
To run the backend of this application, run the following commands in a terminal: 
- bundle install (to install dependencies) 
- rails db:drop
- rails db:create
- rails db:migrate (to migrate migrate database)
- rails db:seed (to seed database) 
- rails s (to run rails server)

To run the frontend of this application, open up a new terminal, navigate to the client folder (I do this to avoid the mistake of creating a package.json file in the main directory) and run the following commands: 
- npm install (to install dependencies) 
- npm start (to start React server)

## Features and How to Use

My friends and I love talking about skincare and sharing our favorite (and least favorite) products with each other. This is the idea behind "Like That" to have a place where we can share products we are using and add our thoughts and reviews to it as well. The product page is simple with an image, Title, description, and price so users know what to expect if they want to buy it for themselves. 

When a user reaches the site they will have full visibilty to the products and reviews- no gatekeeping!! Once signed up and logged in a user can then add new comments to any product, edit/delete their comments, and add new products to the site to be reviewed. 

## Requirements

- Ruby 2.7.4
- NodeJS (v16), and npm

## Contributors

- [Dermstore.com](https://www.dermstore.com/skin-care.list?gclid=Cj0KCQiAgribBhDkARIsAASA5bs1MIJRyeZXPQYksr3WezxXav_bUcFiQFfRwFMqmtehECXUvFNhXuoaAga_EALw_wcB&gclsrc=aw.ds) for product images and information  



