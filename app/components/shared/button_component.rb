# frozen_string_literal: true

class Shared::ButtonComponent < ViewComponent::Base
  def initialize(name:, styles: '')
    @name = name
    @styles = styles
  end
end
