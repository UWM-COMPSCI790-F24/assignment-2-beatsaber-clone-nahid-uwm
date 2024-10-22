extends Node3D
#@onready var song: AudioStreamPlayer = $song

#==============
#@onready var box2: Node3D = $WorldEnvironment/box2
#var move_speed: float = .2
#var box = preload("res://Scene/box_with_sound.tscn")
#================



var xr_interface: XRInterface



func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("✅ OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized, please check if your 🤓 headset is connected")

	#await get_tree().create_timer(1.0).timeout
	#song.play()
