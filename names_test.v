module main

import rand
import os

fn test_rand_num(){
	assert (rand.u32_in_range(100, 999)!.str().len == 3) == ("000".len == 3)
}

fn test_save_to_file(){
	ran_name := random_name()
	os.write_file("valids.txt", ran_name.str())!
	assert true == true
}
