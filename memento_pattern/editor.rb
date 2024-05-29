class Editor
  attr_reader :content

  def initialize(content: '')
    @content = content
  end

  def set_content(content)
    @content = content
  end

  def restore(content_state)
    @content = content_state.content
  end
end