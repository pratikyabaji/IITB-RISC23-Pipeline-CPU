transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/comparator.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/adder.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/pipeline_reg/pipeline_reg5.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/pipeline_reg/pipeline_reg4.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/pipeline_reg/pipeline_reg3.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/pipeline_reg/pipeline_reg2.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/pipeline_reg/pipeline_reg1.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/se10.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/se7.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/register_file.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/ir_memory.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/ir_decoder.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/data_memory.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/carry_zero_flag.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/b_complement.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/alu.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/components/adderpc.vhd}
vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/IITB_RISC23.vhd}

vcom -93 -work work {C:/Users/HP/Desktop/IITB-CPU/IITB_RISC_23_Pipelined_Processor_ALL_WORK_DONE/IITB_RISC_23_Pipelined_Processor/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
