class Inquiry
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :phone, :message, :interested_in
  validates :name, :email, :message, :interested_in, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} } #, :allow_blank => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end