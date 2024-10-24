extends Button

# Função chamada quando o botão é pressionado
func _on_PlayAgainButton_pressed() -> void:
	get_tree().reload_current_scene()  # Reinicia a cena atual

# Chamado quando o nó entra na árvore de cena
func _ready() -> void:
	# Conectando o sinal de pressionar o botão usando Callable
	self.connect("pressed", Callable(self, "_on_PlayAgainButton_pressed"))
