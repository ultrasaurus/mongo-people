require 'faker'

namespace :admin  do
  desc "create some fake data"
  task :fake_people => :environment do
    num_people = ENV['NUM_RECORDS'].to_i
    if num_people == 0  
      print "How many fake people do you want? "
      num_people = $stdin.gets.to_i
    end
    num_people.times do
      Person.create(:name => Faker::Name.name,
                    :street => Faker::Address.street_address,
                    :city => Faker::Address.city,
                    :state => Faker::Address.state_abbr )
    end
    print "#{num_people} created.\n"
  end
end

