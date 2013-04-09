#!/usr/bin/ruby
require 'active_support/core_ext'
 
def more_invites?
        while true
        print "Need moar invitez? [y/n]: "
                case gets.strip
                when 'Y', 'y', 'yes'
                puts "How many more invites do we need captain ?"
        $num2 = gets.strip.to_i
        for j in 1..$num2 do
                puts("Come get your #{j.to_i.ordinalize} code " + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join );
        $num2 +=1;
        end
                when /\A[nN]o?\Z/ #n or no
        puts "Bye, Bai good sir"
                break
                end
        end
end
 
$invites = 0
puts "How many invites do we need master ?"
$num = gets.strip.to_i
puts 'Serving your invitez...'
 
begin
#until $invites > $num do
for i in 1..$num do
puts("Here arz ur invitez.count #{i.to_i.ordinalize} " + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join );
$invites +=1;
end
more_invites?
end
