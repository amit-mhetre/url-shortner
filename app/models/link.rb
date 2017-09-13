class Link < ActiveRecord::Base
  # Validates presence of title and given_url
  validates :title, presence: { message: "Please enter title" }
  validates :given_url, presence: { message: "Please enter URL" }

  after_create :generate_short_url
  before_create :add_protocol_to_given_url


  # Generate short url after creating link object
  def generate_short_url
    self.shorten_url = self.id.to_s(36)
    self.save
  end

  # Add http protocol if user not added to url
  def add_protocol_to_given_url
    unless (self.given_url.start_with?('http') || self.given_url.start_with?('https'))
      self.given_url.prepend('http://')
    end
  end

end
