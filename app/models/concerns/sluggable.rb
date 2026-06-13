module Sluggable
  extend ActiveSupport::Concern

  included do
    before_create :generate_slug
  end

  def generate_slug
    self.slug = title.parameterize if title.present?
  end
end