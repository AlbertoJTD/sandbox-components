class PostComponentPreview < ViewComponent::Preview
  # http://127.0.0.1:3000/rails/view_components => See what the components look like

  def with_default_title
    post = Post.new(title: 'Default Title')
    render(PostComponent.new(post: post))
  end
end