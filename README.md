
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
```







