module ArtistModule
    class Artist
        attr_accessor :name, :age, :location, :invitations
        def initialize(name, age, address)
            @name= name
            @age = age
            @address =address
            @invitations =[] # hash with location, date accept true of false
        end
    
        def get_name
            return name
        end
    
        def acceptInvitations(location, date, status)
            invitation = {location:location, date:date, status:status}
            if status
                invitations << invitation
            end
            return status
        end
    
        def myinvitations
            if invitations.length>0
                x=1
                for value in invitations
                    puts "#{x}: #{value[:location]} on #{value[:date]}"
                    x+=1
                    
                end
            else
                puts "no invitations yet"
            end
        end
    
    
end

    
end

