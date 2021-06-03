class TicTacToe
  attr_accessor :board
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  
  def initialize
    @board = Array.new(9, " ")
  end
  
  
  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  
  def input_to_index(user_input)
    index = user_input.to_i - 1
  end

  
  def move(index, token, default_token = "X")
    @board[index] = token
  end
  
  
  def position_taken?(position)
    if @board[position] != " " && @board[position] != ""
      true
    else
      false
    end
  end
  
  
  def valid_move?(position)
    if @board[position] != " " && @board[position] != ""
      false
    else
      true
    end
  end
  
  
  def turn_count
    counter = 0
    @board.each do |spaces|
      if spaces == "X" || spaces == "O"
      counter += 1
      end
    end
    counter
  end 
  

  def current_player
    if self.turn_count % 2 == 0
      "X"
    else
      "O"
    end
  end
  
    
  #def turn(board)
    #puts "Please enter 1-9: "
    #input = gets.strip
    #input_to_index(input)
    #if valid_move?(position) == true
      #move(index, token, default_token = "X")
      #display_board(board)
    #else
      #turn(board)
    #end
  #end


  def won?(board)
    WIN_COMBINATIONS.each do |win_combo|
      win_index_1 = win_combo[0]
      win_index_2 = win_combo[1]
      win_index_3 = win_combo[2]
      
      position_1 = @board[win_index_1]
      position_2 = @board[win_index_2]
      position_3 = @board[win_index_3]
      
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combo
      elsif position_1 = "O" && position_2 == "O" && position_3 == "O"
        return win_combo
      end
    end
    return false
  end
    
  


  

  end