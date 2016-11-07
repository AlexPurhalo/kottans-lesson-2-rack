require 'rack'
require 'pp'

class App
  def call(env)
    pp env
    [200, {}, ['response text']]
  end
end