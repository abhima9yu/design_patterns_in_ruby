require_relative './content_state.rb'
require_relative './editor.rb'
require_relative './history.rb'

class Main
  def self.execute
    editor = Editor.new
    editor.set_content('a')
    content_state = ContentState.new(content: 'a')
    history = History.new
    history.push(content_state)
    p editor.content

    content_state = ContentState.new(content: 'b')
    history.push(content_state)
    editor.set_content('b')

    p editor.content
    
    previous_state = history.pop
    editor.restore(previous_state)

    p editor.content
  end
end