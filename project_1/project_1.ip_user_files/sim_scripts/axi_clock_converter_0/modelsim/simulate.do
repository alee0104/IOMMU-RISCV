onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xpm -L axi_infrastructure_v1_1_0 -L fifo_generator_v13_2_7 -L axi_clock_converter_v2_1_26 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_clock_converter_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axi_clock_converter_0.udo}

run 1000ns

quit -force
