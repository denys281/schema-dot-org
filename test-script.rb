require 'date'

require 'schema_dot_org/person'
require 'schema_dot_org/place'
require 'schema_dot_org/organization'
include SchemaDotOrg


public_law = Organization.new do |org|
  org.name = 'Public.Law'
  org.founding_date = Date.new(2009, 3, 6)
  org.email = 'say_hi@public.law'
  org.url = 'https://www.public.law'
  org.logo = 'https://www.public.law/favicon-196x196.png'
  org.founder = Person.new do |person|
    person.name = 'Robb Shecter'
  end
  org.founding_location = Place.new do |place| 
    place.address = 'Portland, OR'
  end
end

puts public_law