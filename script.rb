class Tic_tac_toe
    @@nums = [1,2,3,4,5,6,7,8,9]
    @@for_checking = [1,2,3,4,5,6,7,8,9]
    @@game_in_progress = true
    @@did_game_end = false

    def self.display_rows(arr)
        p "#{arr[0]} #{arr[1]} #{arr[2]}"
        p "#{arr[3]} #{arr[4]} #{arr[5]}"
        p "#{arr[6]} #{arr[7]} #{arr[8]}"
    end
    display_rows(@@nums)
    
    def self.end_game(player)
        p "#{player} wins"
        return @@game_in_progress = false
    end

    def self.check_for_win_conditions(player)
        if @@nums[0] == player && @@nums[1] == player && @@nums[2] == player
            end_game(player)
        elsif @@nums[3] == player && @@nums[4] == player && @@nums[5] == player
            end_game(player)
        elsif @@nums[6] == player && @@nums[7] == player && @@nums[8] == player
            end_game(player)
        elsif @@nums[0] == player && @@nums[3] == player && @@nums[6] == player
            end_game(player)
        elsif @@nums[1] == player && @@nums[4] == player && @@nums[7] == player
            end_game(player)
        elsif @@nums[2] == player && @@nums[5] == player && @@nums[8] == player
            end_game(player)
        elsif @@nums[0] == player && @@nums[4] == player && @@nums[8] == player
            end_game(player)
        elsif @@nums[2] == player && @@nums[4] == player && @@nums[6] == player
            end_game(player)
        elsif (@@nums & @@for_checking).empty?
            p "it's a tie"
            return @@game_in_progress = false
        end
    end
    
    def self.checking_already_picked_nums(player)
        p "player '#{player}' pick a number: #{@@nums & @@for_checking}"
        @player_input = gets
        @player_input = @player_input.to_i

        if @@nums.include?(@player_input)
            @@nums[@@nums.index(@player_input)] = player
            display_rows(@@nums)
            check_for_win_conditions("X")
            check_for_win_conditions("O")
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

    def self.rematch
        if @@did_game_end == true
            yes_or_no = ["y", "n"]
            p "Would you like to start a new game? [y/n]"
            choice = gets
            choice = choice.chomp.downcase
            if choice == yes_or_no[0]
                @@game_in_progress = true
                @@did_game_end = false
                @@nums = [1,2,3,4,5,6,7,8,9]
                display_rows(@@nums)
                run_game()
            else
                p "thanks for playing!"
            end
        end
    end
    
    def self.run_game
        for i in 0..@@nums.length - 1
            if @@game_in_progress == true
                i.even? ? player_one_picks() : player_two_picks()
            else
                @@did_game_end = true
                @@nums = [1,2,3,4,5,6,7,8,9]
                rematch()
                return
            end
        end
    end
    run_game()

end