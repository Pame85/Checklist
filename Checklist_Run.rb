

require './Checklist_Task.rb'
require './Checklist_List.rb'

@item
@list

loop do
    puts "Please select your transaction"
    puts "1 - Create title name for the listing"
    puts "2 - Add new item to listing"
    puts "3 - Check status"
    puts "4 - Delete item from listing"
    puts "5 - Add Comment"
    puts "6 - Add priority"
    puts "6 - Exit >>>"

    choice = gets.chomp.to_i

    case choice
        when 1
            puts "What is your list title name?"
            name = gets.chomp
            @list = List.new(name)
            puts "List name #{List.name} has been created"
            puts @list.name

        when 2
            puts "Enter item to #{@list.name}"
            item = gets.chomp
            @list = List.new(list)
            
            # @item = []
            # puts "Task #{item.title} has been added to listing"
            # @list.display_item
          
        when 3
            @list.display_item

        when 4
            @list.display_item
            puts "Enter the no to delete"
            index = gets.chomp.to_i(1)
            item = @list.item(index -1)
            @list.delete_list(item)
            @list.display_item

        when 5
            puts "Nothing, Sayonara !"
        exit
    end
end