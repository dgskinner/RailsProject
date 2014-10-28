require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s


def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s
  
  puts RestClient.post(
  url,
  { user: { name: "Gizmo" }}
  )
  
end

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json'
  ).to_s
  
  puts RestClient.patch(
  url,
  { user: { name: "Bob", email: "bob@gmail.com" } }
  )
end

def find_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json'
  ).to_s
  
  puts RestClient.get(
  url
  )
end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/2.json'
  ).to_s
  
  puts RestClient.delete(
  url
  )
end


def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s
  
  puts RestClient.post(
  url,
  { contact: { name: "Gizzie", email: "gizmo@hotmail.com", user_id: 1 } }
  )
  
end

def update_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/1.json'
  ).to_s
  
  puts RestClient.patch(
  url,
  { contact: { name: "Gizmo", email: "gizmo@hotmail.com" } }
  )
end

def find_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/1.json'
  ).to_s
  
  puts RestClient.get(
  url
  )
end

def destroy_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/6.json'
  ).to_s
  
  puts RestClient.delete(
  url
  )
end



def create_contact_share
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contact_shares.json'
  ).to_s
  
  puts RestClient.post(
  url,
  { contact_share: { user_id: 1, contact_id: 7 } }
  )
  
end


def destroy_contact_share
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contact_shares/1.json'
  ).to_s
  
  puts RestClient.delete(
  url
  )
end

create_contact
