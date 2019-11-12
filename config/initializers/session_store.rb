#change domain to handle the domain the application is store on
if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_key", domain: "insert production host domain here"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_key"
end
