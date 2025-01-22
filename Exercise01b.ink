/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> castle_entrance


== castle_entrance ==
You have approached a mysterious castle while going on a walk. You notice many possible openings to the castle and decide to explore more about it. {not grab_key: While walking around outside you notice a key laying around on the ground.}
+ [Break through the window] -> window_entrance
+ [Sneak into the basement hatch] -> basement_entrance
+ [Try the front door] -> frontdoor_entrance
* [Grab key laying on the ground.] -> grab_key

== window_entrance ==
You crawled through the window. You are met with a poorly lit cellar that was seems mostly empty.
+ [Go Back.] -> castle_entrance 
-> END

== basement_entrance ==
You snuck through the hatch and creep down to the basement. You notice a large door with a giant lock on it.
+ {grab_key} [Unlock door.]  -> hidden_door
+ [Go Back.] -> castle_entrance
-> END

== frontdoor_entrance ==
You try to open the front door but it doesn't budge.
+[Go Back.] -> castle_entrance

== grab_key ==
You now have a key that you might be able to use to unlock somewhere.
+[Go Back.] -> castle_entrance

==hidden_door ==
You unlock the door to reveal a giant abandoned safe with all kinds of luxuries inside!
-> END

