require "university_major_subjects/version"
require 'yaml'

module UniversityMajorSubjects
  RAW = YAML.load_file(File.join(File.dirname(__FILE__), 'university_major_subjects', 'data', 'majors.yml'))

  MAJOR_CATEGORIES = RAW.map{|i| i[:major_category]}.flatten

  MAJORS = RAW.map{|i| i[:majors]}.flatten

  def self.find_by_category(category)
    major_category = RAW.find{|i| i[:major_category].include?(category)}
    major_category[:majors] unless major_category.nil?
  end

  def self.find_category_by_major(major)
    major = MAJORS.find{|m| m[:major].include?(major)}
    major[:major_category] unless major.nil?
  end
end
