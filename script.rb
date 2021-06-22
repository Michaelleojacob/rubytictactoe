
class Tic_tac_toe
    @@nums = [1,2,3,4,5,6,7,8,9]
    # @@nums = ["X","X","X",4,5,6,7,8,9]

    def initialize(first_player, second_player)
        @@first_player = first_player
        @@second_player = second_player
    end

    def self.display_rows(arr)
        p "#{arr[0]} #{arr[1]} #{arr[2]}"
        p "#{arr[3]} #{arr[4]} #{arr[5]}"
        p "#{arr[6]} #{arr[7]} #{arr[8]}"
    end
    display_rows(@@nums)

    def self.check_for_win_conditions
        #? this works but it is sloppy imo.
        if @@nums[0] == "X" && @@nums[1] == "X" && @@nums[2] == "X"
            p "player 1 wins the game"
        end
    end

    # def self.player_picks(player)
    #     p "pick a number between 1-9"
    #     player_input = gets
    #     player_state ? @@nums[@@nums.index(player_input.to_i)] = "X" : @@nums[@@nums.index(player_input.to_i)] = "O"
    # end

    def self.player_one_picks
        p "pick a number between 1-9"
        player_input = gets
        @@nums[@@nums.index(player_input.to_i)] = "X"
        display_rows(@@nums)
    end

    def self.player_two_picks
        p "pick a number between 1-9"
        player_input = gets
        @@nums[@@nums.index(player_input.to_i)] = "O"
        display_rows(@@nums)
    end

    for i in 0..@@nums.length - 1
        check_for_win_conditions()
        i.even? ? player_one_picks : player_two_picks
    end


end


fresh_game = Tic_tac_toe.new("Michael","Ivan")

# p fresh_game


