# frozen_string_literal: true

class HeaderComponent < ViewComponent::Base
  def initialize(title:, classes: nil)
    @title = title
    @classes = classes
  end
end
