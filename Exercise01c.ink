/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something


Variable Checking: 

Equality: "Spot" == "Spot" -> true
Not equality: 1 != 2 -> true
Greater: >
Less: <
Greater or Equal: >=
Less or Equal: <=

*/

VAR crop = ""
VAR kind = false
VAR plant_shape = ""
VAR time = 6

-> farm_house

== farm_house ==
You are one of three farmers located at Apple Blossom Farm. At the start of the planting season, each farmer is given a choice of one of four crops to grow. Last year you decided to grow carrots.
Oh boy were carrots a bad idea. You started the season strong, but a few weeks before you started to harvest the carrots, a bunny invasion from the local zoo began.
Your preparations were not strong enough to prevent the savage beasts from tearing your hard work straight from your hands. You could do nothing but watch as the other farmers pointed and laughed at your demise.
"It'll be different this year," you told the others. You, placing last in crop profits, get to choose your crops first this season. 
You turn to Farmer John, the man in charge of Apple Blossom Farm, and say,

* ["I'm ready for this season! I'm feeling pretty good about my options this time around."] -> nice_choice
* ["Farmer John, let today mark the day you regret your laughter. I'm ready.] -> mean_choice

== nice_choice ==
~ kind = true
You chose not to be rude to Farmer John.
-> crop_choice

== mean_choice ==
You chose to be rude to Farmer John. He will remember that.
-> crop_choice

== crop_choice ==
Farmer John places three bags in front of you, and says "Welp, here ya are buddy. Take a good, long look at 'em. Yer stuck with what you pick."
You weigh your options, thinking about all the possible ways that your crops could be destroyed, focusing greatly on zoo break-outs.

* [Apricot] -> apricot
* [Corn] -> corn
* [Wheat] -> wheat

== apricot ==
~ crop = "apricot"
You choose the apricots, believing that a set of trees can withstand much more than small crops placed in the ground.
"Ha! You think you can make more than us with a tree? Good luck pal, you're gonna need it." Farmer John and Jill continue to make jokes at your expense.
* [Plant your seeds] -> field

== corn ==
~ crop = "corn"
You choose the corn, learning from your viewing of Interstellar that corn is obviously the best crop to grow.
Farmer Jill, the other farmer on Apple Blossom Farm, says, "Ha! So you can pick a good crop!"
* [Plant your seeds] -> field

== wheat == 
~ crop = "wheat"
You choose the wheat, settling on the basics for a guaranteed safe pick.
The other farmers just stare at you as you make your choice. A boring response for a boring crop.
* [Plant your seeds] -> field

== field ==
Leaving Farmer John and Jill, you arrive at your dedicated farm land. You want to get an early start growing your {crop} seeds, because you know that more time growing obviously means more crops grown.
You have a very important decision to make, however.
Do you want to plant your crops in rows or in circles?
* [Rows] -> crop_row
* [Circles] -> crop_circle

== crop_row ==
~ plant_shape = "row"
With your field now freshly plotted in perfect, neat rows, you decide to take a well-deserved break in town.
-> town_day

== crop_circle ==
~ plant_shape = "circle"
{ crop == "corn" : You, being a huge fan of space movies, are also a huge fan of alien movies.} Your crops are planted in circles, and after hours of making sure the circles are as perfect as possible, take a well-deserved break in town.
-> town_day

== town_day ==
The time is {time} in the evening.
{time == 5: You walk into Cherry Dunes, a small town surrounded by farmland. Around you are a motel, a diner, a tool shop, a plant nursery, and several other tiny shops for any of your needs.}
{not uncle_brothers: Your stomach grumbles, and you realize you haven't eaten dinner yet. }
{time < 9: You're feeling too energized to go back to the farm house right now.}
+ [Visit the Motel California] -> motel_california
+ [Visit Uncle Brother's Diner] -> uncle_brothers
+ [Visit Nut Bolt City] -> nut_bolt
+ [Visit Blossom's Blossoms] -> blossoms
+ [Sit on a bench] -> bench

== motel_california ==
~ time = time + 2
"Welcome to the Motel California!"
The clerk at the front desk calls you over, eager to rent you a room.
"Glenfree, how many times are you going to mistake me for a customer?" You respond.
"As many times as it takes for you to rent out a room!"
You sigh, and continue to make small talk with Glenfree about how business has been.
+ [Leave the Motel California] -> motel_cont

== motel_cont ==
"Aww come on, you're gonna leave that soon? Why not check out the latest television show with me first! It's your favorite episode!" Glenfree tries to get you to stay even longer.
It's never your favorite episode, nor is it a show you have heard of before. You believe he gets his channels through an interdimensional cable box you swore you saw in a storage closet once.
Regardless, you stay to watch the show, but you tell Glenfree that you need to leave afterwards, no matter what!
+ {time < 10} [Leave the Motel California] -> town_day
+ {time >= 10} [Leave the Motel California] -> town_night

== uncle_brothers ==
~ time = time + 1
Uncle Brother's Diner! What a fantastic place for a meal.
You enter and take a seat on one of the barstools. A couple of other patrons are quietly eating and conversating nearby, but you can't make out any words.
"I'll just have the usual, Bella." 
Bella is the owner of Uncle Brother's. Ironically enough, she is Lily's, the mayor of Cherry Dunes, aunt, who is Glenfree's, the owner of Motel California, sister.
Your usual is fairly unusual. Always a fan of pancakes, you get two of them. But here's what it gets weird. You can't eat pancakes unless you have an absurd amount of syrup, chocolate chips, and diced tomatoes.
Your plate is set in front of you, and you chow down. Within minutes, it's all gone.
"I do not understand how you enjoy tomatoes on your pancakes. Some day I'm going to ban you from ordering that here!"
No she won't.
You pay your bill and get up to leave the diner.
+ {time < 10} [Leave Uncle Brother's] -> town_day
+ {time >= 10} [Leave Uncle Brother's] -> town_night

== nut_bolt ==
~ time = time + 1
There's not much to see in Nut Bolt City, Cherry Dune's tool shop. Everything that you'd expect to be here is present.
You try browsing through the farming tools, but you already have everything you need.
You spot the owner, Ratchet McSteel, reading a book. That guy always has his nose in a book, but he's the nicest person in this town.
+ {time < 10} [Get up] -> town_day
+ {time >= 10} [Get up] -> town_night

== blossoms ==
~ time = time + 1
You wander into Blossom's Blossoms, a small plant nursery that sells potted plants. You browse the shelves, seeing several types of succulents and flowers. None catch your eye, but you still leave feeling satisfied.
+ {time < 10} [Leave Blossoms] -> town_day
+ {time >= 10} [Leave Blossoms] -> town_night

== bench ==
~ time = time + 1
You sit on a nearby bench, watching your fellow Cherry Dunes citizens wander around, feeling at peace with your decision to plant {crop}s.
+ {time < 10} [Get up] -> town_day
+ {time >= 10} [Get up] -> town_night

== town_night ==
The time is 10 in the evening.
You return back to the Apple Blossom Farm House, eager to get some rest before the next day.
Tomorrow's going to be a big one.
-> END
