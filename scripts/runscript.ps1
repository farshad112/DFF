# Remove all previous simulation file
if(Test-Path "..\sim\work"){
    Remove-Item -Path '..\sim\work' -Recurse
}

# Create work directory
vlib work
# Map work directory
vmap work work
# Compile
vlog ../rtl/verilog/dff.v ../tb/simple_tb.sv

# Simulate in gui mode
vsim dff_tb -gui -do "add wave -position insertpoint sim:/dff_tb/*; run -all;"