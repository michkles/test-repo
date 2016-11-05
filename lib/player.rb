class Player
	attr_reader :name

	def initialize(name)
		@name = name
		@hp = 100
	end	

	def attack(player)
		player.get_damage
	end
	
	def get_damage
		hp = hp - 5
	end		
end