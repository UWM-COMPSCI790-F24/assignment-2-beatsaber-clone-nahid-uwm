extends Node3D

##### Right box spawner

var spawn_interval = .5
var time_since_last_spawn = 0.0

var move_speed = 3.2
var spawned_objects = []

func _process(delta) -> void:
	# Increment the timer
	time_since_last_spawn += delta
	#print ("=> in process ⏰ time_since_last_spawn ---> " , time_since_last_spawn)
	
	# Check if the time since the last spawn has reached the interval
	if time_since_last_spawn >= spawn_interval:
		spawn()
		#print ("===> if ⏱️⏱️⏱️ time_since_last_spawn ---> " , time_since_last_spawn)
		time_since_last_spawn = 0.0 # Reset the timer
		
		
	for obj in spawned_objects:
		obj.transform.origin.z += move_speed * delta


func spawn():
	var spawned_scene = load("res://Scene/right_box_node_3d.tscn")
	var spawned_scene_copy = spawned_scene.instantiate()
	
	#spawned_scene_copy.transform.origin = transform.origin + position_offset
	add_child(spawned_scene_copy)
	print ("spawn function add child  👶👶👶")
	
	
	spawned_objects.append(spawned_scene_copy)
