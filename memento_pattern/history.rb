class History
  def initialize(content_states: [])
    @content_states = content_states
  end

  def push(content_state)
    @content_states.push(content_state)
  end

  def pop
    @content_states.pop
    @content_states[-1]
  end
end