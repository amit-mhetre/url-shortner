class Link < ActiveRecord::Base
  validates :title, presence: { message: "Please enter title" }
  validates :given_url, presence: { message: "Please enter URL" }

  after_create :generate_short_url
  before_create :add_protocol_to_given_url
  # Generate short url after creating link object
  def generate_short_url
    puts "-------> Generating short URL for link with ID : #{self.id}"
    self.shorten_url = self.id.to_s(36)
    self.save
  end

  def display_full_url
    BASE_URL + self.shorten_url
  end

  def add_protocol_to_given_url
    unless (self.given_url.start_with?('http') || self.given_url.start_with?('https'))
      puts "--------> Prepending http protocol to given url"
      self.given_url.prepend('http://')
    end
  end

end
