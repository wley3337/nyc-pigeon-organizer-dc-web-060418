# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

#wants to look like:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#
# }
require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
final_pigeon_list = {}
pigeon_names = []
      data.each do | big_topic, big_hash|
        # binding.pry
        big_hash.each do |little_key, result_array|
          # binding.pry
          result_array.each do |element|
            # binding.pry
            pigeon_names.push(element)
            pigeon_names.uniq!
          end
        end
      end
  pigeon_names.each do |name|
    final_pigeon_list[name] = {}
  end
  final_pigeon_list.each do |name, name_hash|
    data.each do | big_topic, big_hash|
      # binding.pry
      final_pigeon_list[name][big_topic] =  []
      big_hash.each do |little_key, result_array|
        # binding.pry
        final_pigeon_list[name][big_topic]
        result_array.each do |element|
          # binding.pry
          if element == name
            final_pigeon_list[name][big_topic].push(little_key.to_s)
            # binding.pry
          end
        end
      end
    end
  end

      # binding.pry
end
