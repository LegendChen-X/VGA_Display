vlib work

vlog -timescale 1ns/1ns xxx.v

vsim part2

log {/*}
add wave {/*}
force {KEY[3]} 0 0, 1 40 -r 80
force {KEY[0]} 0 0, 1 20
force {CLOCK_50} 0 0, 1 10 -r 20
force {SW[9]} 1 1
force {SW[8]} 1 1
force {SW[7]} 1 1
force {SW[6]} 1 1
force {SW[5]} 1 1
force {SW[4]} 1 1
force {SW[3]} 1 1
force {SW[2]} 1 1
force {SW[1]} 1 1
force {SW[0]} 1 1
run 2000ns