# frozen_string_literal: true

require "test_helper"

class Shared::ButtonComponentTest < ViewComponent::TestCase
  def test_component_renders_button_with_empty_style
    expected = "Click me!"
    render_inline Shared::ButtonComponent.new(name: expected)
    assert_text(expected)
  end

  def test_component_renders_button_with_style
    expected = "I am a button"
    render_inline Shared::ButtonComponent.new(name: expected, styles: 'bg-teal-400')
    assert_text(expected)
  end
end
