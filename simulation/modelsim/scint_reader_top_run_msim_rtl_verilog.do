transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/warren/projects/fpga/fpga_scint_reader {/home/warren/projects/fpga/fpga_scint_reader/nano_timer.v}
vlog -vlog01compat -work work +incdir+/home/warren/projects/fpga/fpga_scint_reader {/home/warren/projects/fpga/fpga_scint_reader/fifo_32.v}
vlog -vlog01compat -work work +incdir+/home/warren/projects/fpga/fpga_scint_reader {/home/warren/projects/fpga/fpga_scint_reader/event_trigger.v}

