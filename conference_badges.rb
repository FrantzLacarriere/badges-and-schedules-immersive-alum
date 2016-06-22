# Write your code here.
require 'pry'
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  return_array = []
  
  attendees.each do |attendee| 
    return_array<<badge_maker(attendee) 
  end

  return_array
end

def assign_rooms(attendees)
  return_array = []

  attendees.each_with_index do |item, idx|
    return_array<<"Hello, #{item}! You'll be assigned to room #{idx + 1}!"
  end

  return_array
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |badge|
    puts badge
  end
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
printer(attendees)