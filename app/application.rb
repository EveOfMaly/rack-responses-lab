
class Application

#     If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.

    def call(env)
        resp = Rack::Response.new
        t = Time.now

        resp.write "Current time: #{t}\n"
        resp.write "Hour: #{t.hour}\n"
        resp.write "Min: #{t.min}\n"


        if t.hour >= 12 
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish
    end
end