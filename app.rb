# nums = [1,2,3,4,5,6,7,8,9]
nums = [1,2,3,4,5]
for_checking = [6,7,8,9]
# for_checking = [1,2,3,4,5,6,7,8,9]
p (nums & for_checking).empty?


# p "pick a number between 1-9"
# first_player_picks = gets
# p nums
# nums[nums.index(first_player_picks.to_i)] = "x"
# p nums
# p first_player_picks.to_i.class

# def print_stuff(arr)
#     "#{arr[0], #{arr[1], #{arr[2]"
# end
# p print_stuff(nums)

# lolidk = "O"

# p lolidk.to_i.class

# def checking_already_picked_nums(player)
#     p "pick a number between 1-9"
#     @player_input = gets

#     @player_input = @player_input.to_i

#     if @@nums.include?(@player_input)
#         return @@nums[@@nums.index(@player_input)] = player
#     else 
#         p "Error - That is not a valid choice, pick again"
#         checking_already_picked_nums()
#     end
# end
