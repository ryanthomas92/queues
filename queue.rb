require_relative 'singly_linked_list'


class Queue
  attr_reader :front, :contents

  def initialize(data=nil)
    @contents = SinglyLinkedList.new(front)
    @front = @contents.head
  end

  def enqueue(element)
    @contents.insert_at_end(element)
  end

  def dequeue
    if !@contents.empty?
      value = @front.data
      @contents.remove_from_start
      @front = @contents.head
      value
    else
      nil
    end
  end

  def inspect
    @contents.inspect.sub('(head)', '(front)')
  end

  def empty?
    @contents.empty?
  end

end
