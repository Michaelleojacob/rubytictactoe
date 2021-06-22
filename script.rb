
class Tic_tac_toe
    @@nums = [1,2,3,4,5,6,7,8,9]
    @@for_checking = [1,2,3,4,5,6,7,8,9]
    # @@nums = ["X","X","X",4,5,6,7,8,9]
    
    def initialize(first_player, second_player)
        @@first_player = first_player
        @@second_player = second_player
    end
    
    def self.check_for_win_conditions(player)
        if @@nums[0] == player && @@nums[1] == player && @@nums[2] == player
            p "#{player} wins"
        end
        # elsif @@nums[3] == player && @@nums[4] == player && @@nums[5] == player
        #     return "#{player} wins!"
        # elsif @@nums[6] == player && @@nums[7] == player && @@nums[8] == player
        #     return "#{player} wins!"
        # elsif @@nums[0] == player && @@nums[3] == player && @@nums[6] == player
        #     return "#{player} wins!"
        # elsif @@nums[1] == player && @@nums[4] == player && @@nums[7] == player
        #     return "#{player} wins!"
        # elsif @@nums[2] == player && @@nums[5] == player && @@nums[8] == player
        #     return "#{player} wins!"
        # elsif @@nums[0] == player && @@nums[4] == player && @@nums[8] == player
        #     return "#{player} wins!"
        # elsif @@nums[2] == player && @@nums[4] == player && @@nums[6] == player
        #     return "#{player} wins!"
        # else
        #     return "it's a tie!"
        # end
    end

    def self.display_rows(arr)
        p "#{arr[0]} #{arr[1]} #{arr[2]}"
        p "#{arr[3]} #{arr[4]} #{arr[5]}"
        p "#{arr[6]} #{arr[7]} #{arr[8]}"
    end
    display_rows(@@nums)
    
    def self.checking_already_picked_nums(player)
        p "player '#{player}' pick a number: #{@@nums & @@for_checking}"
        @player_input = gets
        @player_input = @player_input.to_i

        if @@nums.include?(@player_input)
            @@nums[@@nums.index(@player_input)] = player
            display_rows(@@nums)
        else 
            p "Error - That is not a valid choice, pick again"
            checking_already_picked_nums(player)
        end
    end

    def self.player_one_picks
        checking_already_picked_nums("X")
    end

    def self.player_two_picks
        checking_already_picked_nums("O")
    end

    for i in 0..@@nums.length - 1
        check_for_win_conditions("X")
        check_for_win_conditions("O")
        i.even? ? player_one_picks : player_two_picks
    end
end



fresh_game = Tic_tac_toe.new("Michael","Ivan")

# p fresh_game


