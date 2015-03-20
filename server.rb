require 'sinatra'
#this is dedicated to Spencer, great EE who show us the power of pry!
require 'pry'

#############
# FUNCTIONS #
#############
phrase = ""

def dictionary
  {"ahm" => "arm",
   "ajida" => "agitate",
   "allagy" => "allergy",
   "ansa" => "answer",
   "antenor" => "antenna",
   "ahnt" => "aunt",
   "auder" => "order",
   "bah" => "bar",
   "bahf" => "barf",
   "bahba" => "barber",
   "bedda" => "better",
   "blinkers" => "turning light",
   "bubbla" => "water fountain",
   "bulkie" => "sandwich",
   "capsha" => "capture",
   "cah" => "car",
   "cahd" => "card",
   "carriage" => "shopping cart",
   "chowda" => "clam chowder",
   "clickah" => "remote control",
   "con" => "corn",
   "conna" => "corner",
   "cruiser" => "police car",
   "cubbid" => "cupboard",
   "culla" => "color",
   "decent" => "cool",
   "disintergrated" => "disintegrated",
   "didja"  =>  "did you",
   "doan" => "don't",
   "developah" => "developer",
   "duff" => "planted",
   "dough" => "money",
   "eastuh" => "easter",
   "elastic" => "rubber band",
   "enviament" => "environment",
   "errah" => "error",
   "eyein" => "iron",
   "foewid" => "forward",
   "foilage" => "foliage",
   "fok" => "fork",
   "fotty" => "forty",
   "gahbidge" => "garbage",
   "gavone" => "overdressed",
   "gravy" => "tomato-sauce",
   "guvannuh" => "governor",
   "hoodsie" => "popsicle",
   "husses" => "horses",
   "ideear" => "idea",
   "italian-ice" => "slush",
   "jimmies" => "sprinkles",
   "laybuh" => "labor",
   "liberry" => "library",
   "mackril" => "mackerel",
   "myin" => "mine",
   "nackins" => "napkins",
   "naybuh" => "neighbor",
   "naycha" => "nature",
   "nekkalace" => "necklace",
   "noth" => "north",
   "ova" => "over",
   "ouwwah" => "hour",
   "ovicha" => "overture",
   "packy" => "liquor store",
   "pahdee" => "party",
   "pahla" => "living room",
   "pats" => "patriots",
   "perpertrator" => "perpetrator",
   "paypah" => "paper",
   "pidjun" => "pigeon",
   "pissa" => "very good",
   "pitchez" => "pictures",
   "podadah" => "potato",
   "privledgez" => "privileges",
   "punkin" => "pumpkin",
   "puss" => "frown",
   "rag" => "brag",
   "rotary" => "round about",
   "rubbish" => "garbage",
   "sattaday" => "saturday",
   "scootch" => "annoying",
   "sella" => "basement",
   "selts" => "celtics",
   "sherbert" => "sherbet",
   "shots" => "shorts",
   "shouwah" => "shower",
   "skeave" => "disgusting",
   "sneakiz" => "sneakers",
   "soder" => "soda",
   "soldja" => "soldier",
   "soldjiz" => "soldiers",
   "stoah" => "store",
   "sox" => "red sox",
   "spa" => "luncheonette",
   "speekah" => "speaker",
   "skwayah" => "square",
   "stahvin" => "starving",
   "staypuhla" => "stapler",
   "sub" => "sandwich",
   "suppa" => "dinner",
   "tempuhcha" => "temperature",
   "teyeid" => "tired",
   "tonic" => "soda",
   "ultzsir" => "ulcer",
   "weiud" => "weird",
   "wicked" => "really",
   "wom" => "warm",
   "wotta" => "water",
   "yaww" => "yeah",
   "yoah" => "your",
   "yaws" => "yours",
   "yogitt" => "yogurt"}
end

###############
# CONTROLLERS #
###############

get '/' do
  redirect '/home'
end

get '/home' do
  erb :home
end

post '/translate' do
  phrase = params[:phrase].downcase
end

get '/get_translation' do
  phrase.split.map do |word|
    dictionary.has_key?(word) ? dictionary[word] : word
  end.join(" ")
end
