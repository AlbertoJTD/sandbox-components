# frozen_string_literal: true

require "test_helper"

class HeaderComponentTest < ViewComponent::TestCase
  def test_component_renders_title
    expected = "test"
    render_inline HeaderComponent.new(title: expected)
    assert_text(expected)
  end
end
