extends Node
@onready var sfx_slice: AudioStreamPlayer = $"../sfx_slice"
@onready var sfx_bush: AudioStreamPlayer = $"../sfx_bush"

@onready var body_wall: Area3D = $XROrigin3D/body_wall


	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	#$"SliceSound".play()
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	
	pass


func right_box__on_area_entered(area: Area3D) -> void:
	print("who entered ➡️ ", area.get_parent_node_3d().name)
	print("entered to ➡️ ", get_parent().name)
	 # Replace with function body.

	
	
	if (area.get_parent_node_3d().name) == "RightLaser":
		sfx_bush.play()
		#await get_tree().create_timer(0.2).timeout
		#get_parent().queue_free()
		print(" ✨✨✨✨✨✨✨✨ ")
		
	#else:
	#	await get_tree().create_timer(3.0).timeout
	#	get_parent().queue_free()
		
	


func right_box_on_area_exited(area: Area3D) -> void:
	print("==> right box ==>Exited ⛔ ", area.get_parent_node_3d().name)
	
	if (area.get_parent_node_3d().name) == "RightLaser":
		#sfx_bush.play()
		print(" ✨✨✨✨✨✨✨✨ ")
		#await get_tree().create_timer(0.05).timeout
		get_parent().queue_free()
		
	if (area.get_parent_node_3d().name) == "Main" :
		print(" ➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️➡️ ")
		get_parent().queue_free()
	
		
