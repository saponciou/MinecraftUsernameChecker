module main

import rand

fn test_int() {
	mut current_index := 0
	for {
		current_index = current_index + 1
		if current_index == 999{
			break
		}
	}
	assert current_index == 999
}

fn test_next_num(){
	assert next_number("1") == "002"
}

fn test_rand_num(){
	assert (rand.u32_in_range(100, 999)!.str().len == 3) == ("000".len == 3)
}
