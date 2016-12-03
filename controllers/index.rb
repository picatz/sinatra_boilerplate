module Sinatra
  module App
    module Controllers
      module Index
        def self.registered(app)

          app.get '/' do
            erb :index
          end
        end
      end
    end
  end
end
