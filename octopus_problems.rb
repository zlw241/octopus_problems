



def sluggish_octopus(arr)
  longest_fish = arr[0]
  arr[1..-1].each_index do |i|
    others = arr[0...i] + arr[(i+1)..-1]
    others.each do |o| 
      if o.length > longest_fish.length 
        longest_fish = o 
      end 
    end 
  end 
  longest_fish
end 

def dominant_octopus(arr)
  arr.sort_by { |a| a.length }[-1]
end 

def clever_octopus(arr)
  longest = arr[0]
  arr[1..-1].each do |f|
    longest = f if f.length > longest.length
  end 
  longest
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_octopus(fish)

p dominant_octopus(fish)

p clever_octopus(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}


def slow_dance(direction, arr)
  count = 0 
  until arr[count] == direction 
    count += 1 
  end 
  count 
end

def constant_dance(direction, tiles_hash)
  tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}
  tiles_hash[direction]
end 

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

p constant_dance('up', tiles_hash)
p constant_dance('right-down', tiles_hash)


