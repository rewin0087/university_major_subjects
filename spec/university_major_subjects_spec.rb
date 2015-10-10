require 'spec_helper'
require 'pry'
describe UniversityMajorSubjects do
  context 'constants' do
    it { expect(UniversityMajorSubjects).to have_constant(:RAW) }
    it { expect(UniversityMajorSubjects).to have_constant(:MAJOR_CATEGORIES) }
    it { expect(UniversityMajorSubjects).to have_constant(:MAJORS) }
  end

  it '::RAW' do
    expect(UniversityMajorSubjects::RAW).not_to be_nil
    expect(UniversityMajorSubjects::RAW).not_to be_empty
    expect(UniversityMajorSubjects::RAW).to be_a Array
    expect(UniversityMajorSubjects::RAW.size).to eql(17)
  end

  it '::MAJOR_CATEGORIES' do
    expect(UniversityMajorSubjects::MAJOR_CATEGORIES).not_to be_nil
    expect(UniversityMajorSubjects::MAJOR_CATEGORIES).not_to be_empty
    expect(UniversityMajorSubjects::MAJOR_CATEGORIES).to be_a Array
    expect(UniversityMajorSubjects::MAJOR_CATEGORIES.size).to eql(17)
  end

  it '::MAJORS' do
    expect(UniversityMajorSubjects::MAJORS).not_to be_nil
    expect(UniversityMajorSubjects::MAJORS).not_to be_empty
    expect(UniversityMajorSubjects::MAJORS).to be_a Array
    expect(UniversityMajorSubjects::MAJORS.size).to eql(174)
  end

  context '#find_by_category' do
    it 'Arts' do
      expect(UniversityMajorSubjects.find_by_category('Arts')).not_to be_nil
      expect(UniversityMajorSubjects.find_by_category('Arts')).not_to be_empty
      expect(UniversityMajorSubjects.find_by_category('Arts')).to be_a Array
      expect(UniversityMajorSubjects.find_by_category('Arts').size).to eql(8)
    end

    it 'Business' do
      expect(UniversityMajorSubjects.find_by_category('Business')).not_to be_nil
      expect(UniversityMajorSubjects.find_by_category('Business')).not_to be_empty
      expect(UniversityMajorSubjects.find_by_category('Business')).to be_a Array
      expect(UniversityMajorSubjects.find_by_category('Business').size).to eql(13)
    end

    it 'Education' do
      expect(UniversityMajorSubjects.find_by_category('Education')).not_to be_nil
      expect(UniversityMajorSubjects.find_by_category('Education')).not_to be_empty
      expect(UniversityMajorSubjects.find_by_category('Education')).to be_a Array
      expect(UniversityMajorSubjects.find_by_category('Education').size).to eql(16)
    end

    it 'Computer Engineering' do
      expect(UniversityMajorSubjects.find_by_category('Computer Engineering')).to be_nil
    end
  end

  context '#find_category_by_major' do
    it 'FINE ARTS' do
      expect(UniversityMajorSubjects.find_category_by_major('FINE ARTS')).not_to be_nil
      expect(UniversityMajorSubjects.find_category_by_major('FINE ARTS')).not_to be_empty
      expect(UniversityMajorSubjects.find_category_by_major('FINE ARTS')).to be_a String
      expect(UniversityMajorSubjects.find_category_by_major('FINE ARTS')).to eql('Arts')
    end

    it 'STUDIO ARTS' do
      expect(UniversityMajorSubjects.find_category_by_major('STUDIO ARTS')).not_to be_nil
      expect(UniversityMajorSubjects.find_category_by_major('STUDIO ARTS')).not_to be_empty
      expect(UniversityMajorSubjects.find_category_by_major('STUDIO ARTS')).to be_a String
      expect(UniversityMajorSubjects.find_category_by_major('STUDIO ARTS')).to eql('Arts')
    end

    it 'VISUAL ARTS' do
      expect(UniversityMajorSubjects.find_category_by_major('VISUAL ARTS')).to be_nil
    end
  end
end
