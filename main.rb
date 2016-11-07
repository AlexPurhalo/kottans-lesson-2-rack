require 'rack'

app = ->(env){ [200, {}, ['response text']] }

Rack::Handler::default.run(app)