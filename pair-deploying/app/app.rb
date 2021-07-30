require 'rack'
require 'json'

class App
  def call env
    req = Rack::Request.new env
    case req.path
    when '/'
      index req, env
    when '/api'
      root req, env
    when '/api/stuff'
      stuff req, env
    else
      not_found req, env
    end
  end

  def index _req, env
    [
      200,
      {"Content-Type" => "text/html"},
      File.open('index.html', File::RDONLY)
    ]
  end

  def root _req, _env
    [
      200,
      {"Content-Type" => "application/json"},
      [JSON.dump({hello: :world})]
    ]
  end

  def stuff _req, _env
    resp = {
      stuff: [
        {
          id: 1,
          name: 'thing1'
        },
        {
          id: 2,
          name: 'thing2'
        }
      ]
    }
    [
      200,
      {"Content-Type" => "application/json"},
      [JSON.dump(resp)]
    ]
  end

  def not_found _req, _env
    [
      404,
      {"Content-Type" => "application/json"},
      [JSON.dump({error: "not found"})]
    ]
  end
end
