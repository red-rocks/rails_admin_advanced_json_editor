# RailsAdminJsoneditor

Tool for comfortable editing json in Rails Admin

Thanks for the editor this [repo](https://github.com/josdejong/jsoneditor) 

Example [here](http://jsoneditoronline.org/)

# How to install gem: 

## _1. put gem to gemfile_

```ruby
gem 'rails_admin_jsoneditor', '0.1.0'
```

## _2. Add jsoneditor to your field_

```ruby
config.model 'ProductInfo' do
    edit do
      field :json, :jsoneditor
    end
  end
```
