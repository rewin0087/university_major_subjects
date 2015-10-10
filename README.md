# UniversityMajorSubjects

List of University subject majors and major categories

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'university_major_subjects'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install university_major_subjects

## Usage

    UniversityMajorSubjects::RAW - for raw data

    UniversityMajorSubjects::MAJOR_CATEGORIES

    UniversityMajorSubjects::MAJORS

    UniversityMajorSubjects.find_by_category('Arts') - this will return all majors with a major category of Arts

    UniversityMajorSubjects.find_category_by_major('FINE ARTS') - this will return the major category of FINE ARTS

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

