extends Node

var musicVolume = 1
var sfxVolume = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	
	# Set the main menu canvas to be the only one that's visible when the game is booted
	get_node("MainMenuCanvasLayer").visible = true
	get_node("PlayingGameCanvasLayer").visible = false
	get_node("HowToPlayCanvasLayer").visible = false
	get_node("CreditsCanvasLayer").visible = false
	get_node("OptionsCanvasLayer").visible = false
	
	# Initialize main menu title at the start
	get_node("MainMenuCanvasLayer/MainMenuTitle").text = "Main Menu"
	get_node("MainMenuCanvasLayer/MainMenuTitle").add_theme_font_size_override("font_size", 40)
	get_node("MainMenuCanvasLayer/MainMenuTitle").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("MainMenuCanvasLayer/MainMenuTitle").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	#$"MainMenuCanvasLayer/MainMenuTitle".vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	
	# Initialize play button at the start
	get_node("MainMenuCanvasLayer/PlayButton").size = Vector2(100, 50)
	get_node("MainMenuCanvasLayer/PlayButton/PlayText").text = "Play"
	get_node("MainMenuCanvasLayer/PlayButton/PlayText").add_theme_font_size_override("font_size", 20)
	get_node("MainMenuCanvasLayer/PlayButton/PlayText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("MainMenuCanvasLayer/PlayButton/PlayText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize how to play button at the start
	get_node("MainMenuCanvasLayer/HowToPlayButton").size = Vector2(100, 50)
	get_node("MainMenuCanvasLayer/HowToPlayButton/HowToPlayText").text = "How to Play"
	get_node("MainMenuCanvasLayer/HowToPlayButton/HowToPlayText").add_theme_font_size_override("font_size", 15)
	get_node("MainMenuCanvasLayer/HowToPlayButton/HowToPlayText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("MainMenuCanvasLayer/HowToPlayButton/HowToPlayText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize credits button at the start
	get_node("MainMenuCanvasLayer/CreditsButton").size = Vector2(100, 50)
	get_node("MainMenuCanvasLayer/CreditsButton/CreditsText").text = "Credits"
	get_node("MainMenuCanvasLayer/CreditsButton/CreditsText").add_theme_font_size_override("font_size", 18)
	get_node("MainMenuCanvasLayer/CreditsButton/CreditsText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("MainMenuCanvasLayer/CreditsButton/CreditsText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize options button at the start
	get_node("MainMenuCanvasLayer/OptionsButton").size = Vector2(100, 50)
	get_node("MainMenuCanvasLayer/OptionsButton/OptionsText").text = "Options"
	get_node("MainMenuCanvasLayer/OptionsButton/OptionsText").add_theme_font_size_override("font_size", 18)
	get_node("MainMenuCanvasLayer/OptionsButton/OptionsText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("MainMenuCanvasLayer/OptionsButton/OptionsText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# How to Play canvas initialization
	# Initialize how to play menu title at the start
	get_node("HowToPlayCanvasLayer/HowToPlayTitle").text = "How to Play"
	get_node("HowToPlayCanvasLayer/HowToPlayTitle").add_theme_font_size_override("font_size", 40)
	get_node("HowToPlayCanvasLayer/HowToPlayTitle").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("HowToPlayCanvasLayer/HowToPlayTitle").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize how to play back button at the start
	get_node("HowToPlayCanvasLayer/HowToPlayBackButton").size = Vector2(100, 50)
	get_node("HowToPlayCanvasLayer/HowToPlayBackButton/HowToPlayBackText").text = "Back"
	get_node("HowToPlayCanvasLayer/HowToPlayBackButton/HowToPlayBackText").add_theme_font_size_override("font_size", 20)
	get_node("HowToPlayCanvasLayer/HowToPlayBackButton/HowToPlayBackText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("HowToPlayCanvasLayer/HowToPlayBackButton/HowToPlayBackText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Credits canvas initialization
	# Initialize credits menu title at the start
	get_node("CreditsCanvasLayer/CreditsTitle").text = "Credits"
	get_node("CreditsCanvasLayer/CreditsTitle").add_theme_font_size_override("font_size", 40)
	get_node("CreditsCanvasLayer/CreditsTitle").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("CreditsCanvasLayer/CreditsTitle").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize credits back button at the start
	get_node("CreditsCanvasLayer/CreditsBackButton").size = Vector2(100, 50)
	get_node("CreditsCanvasLayer/CreditsBackButton/CreditsBackText").text = "Back"
	get_node("CreditsCanvasLayer/CreditsBackButton/CreditsBackText").add_theme_font_size_override("font_size", 20)
	get_node("CreditsCanvasLayer/CreditsBackButton/CreditsBackText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("CreditsCanvasLayer/CreditsBackButton/CreditsBackText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Options canvas initialization
	# Initialize options menu title at the start
	get_node("OptionsCanvasLayer/OptionsTitle").text = "Options Menu"
	get_node("OptionsCanvasLayer/OptionsTitle").add_theme_font_size_override("font_size", 40)
	get_node("OptionsCanvasLayer/OptionsTitle").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("OptionsCanvasLayer/OptionsTitle").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize options back button at the start
	get_node("OptionsCanvasLayer/OptionsBackButton").size = Vector2(100, 50)
	get_node("OptionsCanvasLayer/OptionsBackButton/OptionsBackText").text = "Back"
	get_node("OptionsCanvasLayer/OptionsBackButton/OptionsBackText").add_theme_font_size_override("font_size", 20)
	get_node("OptionsCanvasLayer/OptionsBackButton/OptionsBackText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("OptionsCanvasLayer/OptionsBackButton/OptionsBackText").horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	
	# Initialize options music volume slider at the start
	get_node("OptionsCanvasLayer/MusicVolumeSlider").size = Vector2(100, 50)
	get_node("OptionsCanvasLayer/MusicVolumeText").text = "Music Volume"
	get_node("OptionsCanvasLayer/MusicVolumeSlider/MusicVolumePercentage").text = str(musicVolume * 100) + "%"
	get_node("OptionsCanvasLayer/MusicVolumeText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("OptionsCanvasLayer/MusicVolumeText").horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	get_node("OptionsCanvasLayer/MusicVolumeSlider").step = 0.01
	
	get_node("OptionsCanvasLayer/MusicVolumeSlider").value = musicVolume
	
	get_node("OptionsCanvasLayer/SFXVolumeSlider").size = Vector2(100, 50)
	get_node("OptionsCanvasLayer/SFXVolumeText").text = "SFX Volume"
	get_node("OptionsCanvasLayer/SFXVolumeSlider/SFXVolumePercentage").text = str(sfxVolume * 100) + "%"
	get_node("OptionsCanvasLayer/SFXVolumeText").vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	get_node("OptionsCanvasLayer/SFXVolumeText").horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	get_node("OptionsCanvasLayer/SFXVolumeSlider").step = 0.01
	
	get_node("OptionsCanvasLayer/SFXVolumeSlider").value = sfxVolume


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pass
	
	musicVolume = get_node("OptionsCanvasLayer/MusicVolumeSlider").value
	sfxVolume = get_node("OptionsCanvasLayer/SFXVolumeSlider").value
	
	get_node("OptionsCanvasLayer/MusicVolumeSlider/MusicVolumePercentage").text = str(musicVolume * 100) + "%"
	get_node("OptionsCanvasLayer/SFXVolumeSlider/SFXVolumePercentage").text = str(sfxVolume * 100) + "%"


func _on_play_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = false
	get_node("PlayingGameCanvasLayer").visible = true


func _on_how_to_play_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = false
	get_node("HowToPlayCanvasLayer").visible = true


func _on_credits_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = false
	get_node("CreditsCanvasLayer").visible = true


func _on_options_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = false
	get_node("OptionsCanvasLayer").visible = true


func _on_how_to_play_back_button_pressed():
	#pass # Replace with function body.
	get_node("MainMenuCanvasLayer").visible = true
	get_node("HowToPlayCanvasLayer").visible = false


func _on_credits_back_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = true
	get_node("CreditsCanvasLayer").visible = false


func _on_options_back_button_pressed():
	#pass # Replace with function body.
	
	get_node("MainMenuCanvasLayer").visible = true
	get_node("OptionsCanvasLayer").visible = false
