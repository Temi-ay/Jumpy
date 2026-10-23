extends CanvasLayer

func show_win(coins: int) -> void:
	%WinLabel.text = "You Win!\nCoins: " + str(coins)
	%WinUI.visible = true
