# frozen_string_literal: true

class Greeter # rubocop:disable Style/Documentation
  attr_accessor :name # Acesso ao nome

  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Goodbye #{@name}, come back soon!"
  end
end

greeter = Greeter.new('Pat')
greeter.say_hi
greeter.say_bye
greeter.name = 'Lucas' # Acessando o novo nome
greeter.say_hi
