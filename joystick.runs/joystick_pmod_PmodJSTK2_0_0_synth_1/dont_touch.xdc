# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: /home/biguser/joystick/joystick.srcs/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/joystick_pmod_PmodJSTK2_0_0.xci
# IP: The module: 'joystick_pmod_PmodJSTK2_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] -quiet

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/PmodJSTK2_pmod_bridge_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_pmod_bridge_0_0 || ORIG_REF_NAME==PmodJSTK2_pmod_bridge_0_0} -quiet] -quiet

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/joystick_pmod_PmodJSTK2_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'joystick_pmod_PmodJSTK2_0_0'. Do not add the DONT_TOUCH constraint.
set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'joystick_pmod_PmodJSTK2_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/PmodJSTK2_pmod_bridge_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_pmod_bridge_0_0 || ORIG_REF_NAME==PmodJSTK2_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# IP: /home/biguser/joystick/joystick.srcs/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/joystick_pmod_PmodJSTK2_0_0.xci
# IP: The module: 'joystick_pmod_PmodJSTK2_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] -quiet

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/PmodJSTK2_pmod_bridge_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_pmod_bridge_0_0 || ORIG_REF_NAME==PmodJSTK2_pmod_bridge_0_0} -quiet] -quiet

# IP: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_gpio_0_0/PmodJSTK2_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_gpio_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/joystick_pmod_PmodJSTK2_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'joystick_pmod_PmodJSTK2_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'joystick_pmod_PmodJSTK2_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells inst -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/PmodJSTK2_pmod_bridge_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_pmod_bridge_0_0 || ORIG_REF_NAME==PmodJSTK2_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_ooc.xdc

# XDC: /home/biguser/joystick/joystick.gen/sources_1/bd/joystick_pmod/ip/joystick_pmod_PmodJSTK2_0_0/src/PmodJSTK2_axi_quad_spi_0_0/PmodJSTK2_axi_quad_spi_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodJSTK2_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodJSTK2_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet
