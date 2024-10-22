extends Node3D

##### Right and Left box spawner

var spawn_interval = 2.0 
var time_since_last_spawn = 0.0

var move_speed = 2.5 
var spawned_objects = [] 


func _process(delta) -> void:
	
	time_since_last_spawn += delta
	
	
	if time_since_last_spawn >= spawn_interval:
		spawn()
		
		time_since_last_spawn = 0.0  
		spawn_interval = randf_range(1.4, 3)
		
	
	for obj in spawned_objects:
		obj.transform.origin.z += move_speed * delta


func spawn():
	
	var scene_paths = [
		"res://Scene/left_box_node_3d.tscn", 
		"res://Scene/right_box_node_3d.tscn"
	]
	
	var random_scene_path = scene_paths[randi() % scene_paths.size()]  
	var spawned_scene = load(random_scene_path)  
	var spawned_scene_copy = spawned_scene.instantiate() 
	
	
	add_child(spawned_scene_copy)
	print("👶👶👶 Spawned a new object: ", random_scene_path)
	
	
	spawned_objects.append(spawned_scene_copy)
