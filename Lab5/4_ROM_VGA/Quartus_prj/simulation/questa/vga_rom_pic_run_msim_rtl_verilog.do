transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/ipcore_dir {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/ipcore_dir/clk_gen.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL/vga_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL/vga_rom_pic.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/RTL/vga_pic.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/ipcore_dir {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/ipcore_dir/rom_pic.v}
vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/db {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/db/clk_gen_altpll.v}

vlog -vlog01compat -work work +incdir+C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/../Sim {C:/Users/wangz/Documents/GitHub/FPGA-Laboratory/Lab5/4_ROM_VGA/Quartus_prj/../Sim/tb_vga_rom_pic.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_vga_rom_pic

add wave *
view structure
view signals
run 20 ms
