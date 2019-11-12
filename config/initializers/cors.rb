Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do 
        # change origin to handle front end application
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    allow do 
        # change origin to domain of the production app. Will use Heroku
        origins "insert host domain here"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
end
