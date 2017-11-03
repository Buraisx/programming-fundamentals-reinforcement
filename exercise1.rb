train111 = ""
train80B = 0
train610 = ""
trains = [
	{train: "72C", frequency_in_minutes: 15, direction: "north"},
	{train: "72D", frequency_in_minutes: 15, direction: "south"},
	{train: "610", frequency_in_minutes: 5, direction: "north"},
	{train: "611", frequency_in_minutes: 5, direction: "south"},
	{train: "80A", frequency_in_minutes: 30, direction: "east"},
	{train: "80B", frequency_in_minutes: 30, direction: "west"},
	{train: "110", frequency_in_minutes: 15, direction: "north"},
	{train: "111", frequency_in_minutes: 15, direction: "south"}
	]

train111 = trains[-1][:direction]
train80B = trains[5][:frequency_in_minutes]
train610 = trains[2][:direction]

puts train111
puts train80B
puts train610

north_trains = []
east_trains = []

# find trains in certain direction
def train_direction(trains, direction)
	new_trains=[]
	trains.each do |alltrains|
		if alltrains[:direction] == direction
			new_trains << alltrains[:train]
		end
	end
	return new_trains
end	
 north_trains = train_direction(trains,"north")
 east_trains = train_direction(trains,"east")
 puts north_trains
 puts east_trains

# first departure time
trains[0][:first_departure_time] = 12
puts trains[0]