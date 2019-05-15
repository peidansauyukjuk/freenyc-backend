# frozen_string_literal: true

class CourseSerializer < ActiveModel::Serializer
  has_many :images
  has_many :addresses
  attributes :id

  def images
    object.images.map do |image|
      {
        description: image.description,
        url: image.url
      }
    end
  end

  def addresses
    object.addresses.map do |address|
      {
        address_first: address.address_first,
        address_second: address.address_second,
        city: address.city,
        zipcode: address.zipcode
      }
    end
  end
end