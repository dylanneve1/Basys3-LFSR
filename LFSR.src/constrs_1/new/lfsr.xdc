## Clock signal
set_property PACKAGE_PIN W5 [get_ports CCLK]
    set_property IOSTANDARD LVCMOS33 [get_ports CCLK]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CCLK]

## Switches
set_property PACKAGE_PIN V17 [get_ports {sh_en}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sh_en}]
set_property PACKAGE_PIN V16 [get_ports {reset}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
    
## LEDs
set_property PACKAGE_PIN U16 [get_ports {X[0]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[0]}]
set_property PACKAGE_PIN E19 [get_ports {X[1]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[1]}]
set_property PACKAGE_PIN U19 [get_ports {X[2]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[2]}]
set_property PACKAGE_PIN V19 [get_ports {X[3]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[3]}]
set_property PACKAGE_PIN W18 [get_ports {X[4]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[4]}]
set_property PACKAGE_PIN U15 [get_ports {X[5]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[5]}]
set_property PACKAGE_PIN U14 [get_ports {X[6]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[6]}]
set_property PACKAGE_PIN V14 [get_ports {X[7]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[7]}]
set_property PACKAGE_PIN V13 [get_ports {X[8]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[8]}]
set_property PACKAGE_PIN V3 [get_ports {X[9]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[9]}]
set_property PACKAGE_PIN W3 [get_ports {X[10]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[10]}]
set_property PACKAGE_PIN U3 [get_ports {X[11]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[11]}]
set_property PACKAGE_PIN P3 [get_ports {X[12]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[12]}]
set_property PACKAGE_PIN N3 [get_ports {X[13]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[13]}]
set_property PACKAGE_PIN P1 [get_ports {X[14]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[14]}]
set_property PACKAGE_PIN L1 [get_ports {X[15]}]
        set_property IOSTANDARD LVCMOS33 [get_ports {X[15]}]
