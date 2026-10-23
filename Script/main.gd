extends Node

func _ready():
	for coin in $Coin.get_children():
		coin.coin_collected.connect(_on_coin_collected)

func _on_coin_collected() -> void:
	$CoinCounterUI.add_coin()
	%CoinSound.play()
