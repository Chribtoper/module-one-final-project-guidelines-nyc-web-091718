class Game
  attr_accessor :running

  def initialize(running)
    @running = running
  end

  def make_npc
      print "Enter the number of NPCs you want: "
      x = gets.chomp
      x.times do Npc.create()
      end
  end

  def print_commands
    # exit
    # help
    # create npc custom
    # create npc random
  end

  def create_npc_custom
    puts "Enter [name][race][age]"
    input = gets.chomp
    split_in = input.split
    
  end

  def create_npc_random

  end

  def do_command(cmd)
    split_cmd = cmd.split
    case split_cmd[0]
    when "exit"
      @running = false
    when "help"
      print_commands
    when "create"
      case split_cmd[1]
      when "npc"
        case split_cmd[2]
        when "custom"
          create_npc_custom
        when "random"
          create_npc_random
        end
      #when "town"
      end
    else
      puts "#{cmd} is not a valid command"
    end
  end

  def start
    while running
      print "Enter command: "
      cmd = gets.chomp
      do_command(cmd)
    end
  end

end
