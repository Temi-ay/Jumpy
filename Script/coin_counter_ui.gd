extends CanvasLayer

const SAVE_PATH := "user://bestscore.save"

var coin_count: int = 0
var best_score: int = 0

func _ready() -> void:
	_load_best()
	_update_label()

func add_coin() -> void:
	coin_count += 1
	_update_label()
	
func save_best() -> void:
	if coin_count > best_score:
		best_score = coin_count
		var file := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
		file.store_32(best_score)
		file.close()
		_update_label()
		
func _load_best() -> void:
	if FileAccess.file_exists(SAVE_PATH):
		var file := FileAccess.open(SAVE_PATH,FileAccess.READ)
		best_score = file.get_32()
		file.close()

func _update_label() -> void:
	%CoinLabel.text = str(coin_count)
	%BestLabel.text = "Best: "+str(best_score)
