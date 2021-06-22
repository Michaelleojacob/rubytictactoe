def self.checking_already_picked_nums
    @player_input = gets
    @player_input = @player_input.to_i

    if @@nums.include?(@player_input)
        return @player_input
    else 
        p "Error- That is not a valid choice, pick again"
        checking_already_picked_nums()
    end

    p @@nums.include?(@player_input)
    @@nums[@@nums.index(@player_input)] = "X"
    display_rows(@@nums)
    @player_input = gets
    p @@nums.include?(@player_input)
    # p @player_input
    # p @player_input.to_i
    # p @player_input.to_i.class
    # if @@nums[@@nums.index(@player_input.to_i)] == 0
    #     p "That slot has already been picked"
    #     return @player_input = gets
    # end
end