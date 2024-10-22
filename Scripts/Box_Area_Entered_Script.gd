extends Node
@onready var sfx_slice: AudioStreamPlayer = $"../sfx_slice"



# Called when the node enters the scene tree for the first time.
func _ready():
	#$"SliceSound".play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass
	


func _on_area_entered(area: Area3D) -> void:
	print("who entered ➡️ ", area.get_parent_node_3d().name)
	print("entered to ➡️ ", get_parent().name)
	
	sfx_slice.play()



func _on_area_exited(area: Area3D) -> void:
	print("Exited ⛔ ", area.get_parent_node_3d().name) 
	get_parent().queue_free()
	
	
