require 'rack'

class Middleware
  def initialize(next_app)
    p next_app # <App:0x007fd08c990f70>
    @app = next_app
  end

  def call(env)
    status, headers, body = @app.call(env)
    [status, headers, ['<h1>'] + body + ['</h1>']]
  end
end

class App
  def call(env)
    [200, {}, ['response text']]
  end
end