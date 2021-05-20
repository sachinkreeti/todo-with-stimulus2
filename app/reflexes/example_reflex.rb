# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  def toggle
    todo = Todo.find(element.dataset[:id])
    todo.update(completed_at: todo.completed_at.present? ? nil : Time.current)
  end
end
