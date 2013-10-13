
```
rails new mongo-people --skip-active-record --skip-test-unit
cd mongo-people
```

in Gemfile, removed coffeescript, add
```
gem "mongoid"
gem "bson_ext"
```

on the command line:
```
rails generate mongoid:config
rails generate scaffold person name street city state
```

# Mongo Model
Woo hoo!  I've got an app -- looks like a vanilla Rails app from the outside, but it is different on the inside:
```
class Person
  include Mongoid::Document
  field :name, type: String
  field :street, type: String
  field :city, type: String
  field :state, type: String
end
```



# Create some fake people:
in Gemfile:
```
gem "faker"
```
Create modified [fake_poeple rake task](http://www.ultrasaurus.com/sarahblog/2009/12/creating-a-custom-rake-task/)

```
rake admin:fake_people #prompts me for number of people

rake admin:fake_people NUM_RECORDS=1000 # creates 1000 person records
```







