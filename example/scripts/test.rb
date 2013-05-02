class MyClass
  attr_accessor :rarity_cpp_pointer
end

class MyRubyClass
  def initialize
    puts "Initalizing ruby class"
    @my_class = MyClass.new "Name set from ruby"
    @my_class.print_array [ "Value1", "Value2", "Value3" ]

    tmp = MyOtherClass.new
    nbr = tmp.print_name
    puts "Unsigned int returned was -> #{nbr}"
    tmp.set_my_class tmp
    tmp.print_name
  end

  def run my_class = nil
    my_class ||= @my_class
    puts "[Ruby] #{my_class.get_name}"
  end
end
