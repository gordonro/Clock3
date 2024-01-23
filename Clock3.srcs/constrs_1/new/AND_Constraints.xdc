set_property PACKAGE_PIN M19 [get_ports a]
set_property PACKAGE_PIN M20 [get_ports b]
set_property PACKAGE_PIN M14 [get_ports c]
set_property PACKAGE_PIN D19 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports c]
set_property IOSTANDARD LVCMOS33 [get_ports b]
set_property IOSTANDARD LVCMOS33 [get_ports a]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property DRIVE 12 [get_ports c]
# Clock signal 125 MHz
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { CLK_IN }];
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 5} [get_ports { CLK_IN }];