# GodotMenuSystem
Small and simple menu system for Godot applications

Scenes skal gemmes som .tscn for at de serialiseres som tekst filer, som er nemmere for git at håndtere.
Resurser skal gemmes som .tres for at de gemmes som tekst resurser.

Sæt vinduets størrelse under Project, Project Settings, Display, Window så det passer til dit billede.
- Viewport width **640**
- Viewport height **480**
- Mode Windowed
- Borderless - **true**

Create root node; User Interface (Control node). Rename to Menu
Add MarginContainer node to Menu. 
Add VBoxContainer to MarginContainer.
Add Button(s) to VBoxContainer
- Play
- Options
- Exit/Quit
Sæt Text option på hver button

På hver knap, gå i Theme Overrides, Fonts og træk en udvalgt font over i feltet, så denne font benyttes til hver knap. Her har jeg valgt en Bubble Sans som er hentet fra nettet og frit kan benyttes, også kommercielt.

Tilføj et nyt script til Menu node, kaldet menu.gd.

Vælg Play button noden.
Klick Signals tab i Properties panelet, og vælg pressed() under BaseButton, og tryk Connect.

Gør dette for hver enkelt knap.

Få Quit knappen til at virke
```
func _on_quit_pressed()
	get_tree().quit()
```

Få Play knappen til at virke
```GDscript
func _on_play_pressed():
	get_tree().change_scene_to_file("res://game.tscn")    #The file to load
```

Få Options knappen til at virke
```GDscript
func _on_options_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")    #The file to load
```

Og så er vi der...en lille grundlæggende menu.