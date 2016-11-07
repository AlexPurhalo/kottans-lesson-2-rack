require 'rack'

App = ->(env){ [200, {}, ['response text']] }