extends XROrigin3D  # Ensure it's extending Node3D if you're working with 3D nodes in VR
var xr_interface: XRInterface
var current_rotation
var offset_position

@onready var right_laser: XRController3D = $RightLaser
@onready var left_laser: XRController3D = $LeftLaser

@onready var area_3d: Area3D = $Area3D

@onready var song: AudioStreamPlayer = $"../song"


func _ready() -> void:
	pass # Initial setup can go here if needed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# reset the VR view 
func reset_vr_view():
	
	XRServer.center_on_hmd(XRServer.RESET_FULL_ROTATION,true)
	


func _on_right_laser_button_pressed(name: String) -> void:
	if name == "primary_click":
		reset_vr_view() 
		await get_tree().create_timer(1.0).timeout
		song.play()
		
	if name == "ax_button":
		right_laser.visible = true 
		
	if name == "by_button":
		right_laser.visible = false 
		


func _on_left_laser_button_pressed(name: String) -> void:
	if name == "ax_button":
		left_laser.visible = true 
		
		
	if name == "by_button":
		left_laser.visible = false 
		
