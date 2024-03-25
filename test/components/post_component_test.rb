# frozen_string_literal: true

require "test_helper"

class PostComponentTest < ViewComponent::TestCase
  def test_component_renders_post_title
    post = posts(:apple)
    render_inline PostComponent.new(post:)
    assert_text(post.title)
  end

  def test_component_renders_post_body
    post = posts(:apple)
    render_inline PostComponent.new(post:)
    assert_text(post.body)
  end

  def test_component_renders_post_content
    post = posts(:apple)
    expected = 'Hello world' 
    render_inline PostComponent.new(post:) do
      expected  
    end
    assert_text(expected)
  end

  def test_Render_preview
    render_preview(:with_default_title)

    assert_text('Default Title')
  end
end
