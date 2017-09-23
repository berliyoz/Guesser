$computer_num = 0
$user_num = 0
$right = 0
$wrong = 0
$test = 0
$number = 3

def prompt
	puts " "
	puts "-----------------------"
	puts "what is yor guess?"
	print ">> "
	$user_num = gets.chomp.to_i
end

def computer_number_pick
	$computer_num = rand(1..10)
end

def show
	if $user_num == $computer_num
		$right += 1
	else
		$wrong += 1
	end
	puts """
	+---------------+
	| Right: #{$right}\t|
	| Wrong: #{$wrong}\t|
	+---------------+

	Computer Pick: #{$computer_num}
	User Pick:     #{$user_num}
	"""
end

def info
	puts """
		     ----[ THE MALIKELESU GUSSER ]----

		Choose a number between 1 to 10.
		The computer will do the same.
		If you mange to guess the computer's number
		it means you are one step closer to reading
		the mind of the machine.

		Good luck!

		00 - quit
		"""
end

def testing
	$test = $number * 2
	puts "This is a test: #{$test}"	
	$test = $user_num * 2
	puts "This is a test: #{$test}"
end

def main
	info
	while true
		computer_number_pick
		prompt
		case $user_num
		when 00
			exit(0)			
		end
		show
		#testing
	end
end  

main