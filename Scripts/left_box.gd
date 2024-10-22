extends Node
@onready var sfx_slice: AudioStreamPlayer = $"../sfx_slice"



# Called when the node enters the scene tree for the first time.
func _ready():
	#$"SliceSound".play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass
	



func left_box_on_area_entered(area: Area3D) -> void:
	print("who entered ➡️ ", area.get_parent_node_3d().name)
	print("entered to ➡️ ", get_parent().name)
	 # Replace with function body.
	
	if (area.get_parent_node_3d().name == "LeftLaser"):
		sfx_slice.play() # Replace with function body.
		
	


func left_box_on_area_exited(area: Area3D) -> void:
	print("--> left box --> Exited ⛔ ", area.get_parent_node_3d().name) # Replace with function body.
	
	if (area.get_parent_node_3d().name == "LeftLaser"):
		#await get_tree().create_timer(0.1).timeout
		get_parent().queue_free() # Replace with function body.
	
	if (area.get_parent_node_3d().name) == "Main" :
		print(" ⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔ ")
		get_parent().queue_free()
