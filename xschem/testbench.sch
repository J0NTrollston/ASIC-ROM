v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 820 -20 1620 380 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
C {devices/code.sym} -120 -120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -150 50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {NOR_ROM_2bit.sym} 570 150 0 0 {name=x1}
C {devices/vsource.sym} 340 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 400 -90 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 340 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -120 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 340 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 400 -60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 720 100 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 120 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 140 2 0 {name=p7 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 720 160 2 0 {name=p8 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} 720 180 2 0 {name=p9 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} 720 200 2 0 {name=p10 sig_type=std_logic lab=b3}
C {devices/simulator_commands_shown.sym} 540 -160 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 0.1ms 5ms
write testbench.raw
.endc
"}
C {devices/lab_pin.sym} 420 100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 120 0 0 {name=p6 sig_type=std_logic lab=VDD}
