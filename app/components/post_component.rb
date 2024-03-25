# frozen_string_literal: true

class PostComponent < ViewComponent::Base
  def initialize(id:, title:, body:)
    @id = id
    @title = title
    @body = body
  end

end
