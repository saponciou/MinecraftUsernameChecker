module main

import net.http
import time
import rand

fn main(){
	println("\x1b[34mMade by Sap :)\x1b[0m")
	for {
		time.sleep(0.5)
		ran_name := random_name()
		url := 'https://api.mojang.com/users/profiles/minecraft/${ran_name}?'
		time.sleep(0.5)
		if resp := http.get(url) {
			if resp.body.contains("errorMessage") {
				println("\x1b[32mAviable: " + ran_name.str() + "\x1b[0m")
			} else {
				println("\x1b[31mUnaviable: " + ran_name.str() + "\x1b[0m")
			}
		} else {
			println(err)
		}
	}
}
fn random_name() string{
	words := ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9', '_']
	mut name := ""
	for i in 0 .. 3{
		word := words[rand.intn(words.len) or {0}]
		name += word
	}
	return name
}
