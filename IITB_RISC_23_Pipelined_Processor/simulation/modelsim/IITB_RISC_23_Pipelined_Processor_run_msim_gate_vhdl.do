transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {IITB_RISC_23_Pipelined_Processor.vho}

vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor/Testbench.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
