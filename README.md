# clickynav
Example of how to move to a location clicked on on a nav mesh in Godot 3.5

Based off of

FinePointCGI's [Getting Your Mouse Position in 3D Space! | Lets Learn Godot 3.4!](https://www.youtube.com/watch?v=jvxeHSotKpg) for how to get the mouse clicks.

and 

Garbaj's [3D AI Pathfinding With Navmesh (Godot tutorial)](https://www.youtube.com/watch?v=YFgrpp1fpOI) for how to make something use the nav mesh to move to some point.

the root 'Spatial' node calls 'build()' on 'Area/ClickyShape' node with the node 'Navigation/NavigationMeshInstance's navmash as the argument.

'build()' then extrats the trigles from the navmesh and the faces on the ConcavePolygonShape in 'Area/ClickyShape's 'shape' proporty

The 'Area' node's 'input_event' signal is wired to the 'Navigation/NavGuy' node' which handles moving itself to the location of the LMB click. 
