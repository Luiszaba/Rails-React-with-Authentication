#change domain to handle the domain the application is store on
Rails.application.config.session_store :cookie_store, key: "_authentication_key", domain: "herokuapp.com"