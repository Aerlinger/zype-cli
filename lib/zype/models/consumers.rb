module Zype
  class Consumers < Zype::Collection
    model Consumer

    def all(params={})
      load(service.get('/consumers', params))
    end

    def find(id)
      load(service.get("/consumers/#{id}"))
    end

    def create(attributes={})
      load(service.post("/consumers", consumer: attributes))
    end

    def update(id, attributes={})
      load(service.put("/consumers/#{id}", consumer: attributes))
    end
  end
end
