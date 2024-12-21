v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 830 -20 1630 380 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color="4 5"
node="x0
x1"}
B 2 830 400 1630 800 {flags=graph
y1=-0.36
y2=1.44
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 5"
node="b0
pc"}
B 2 830 820 1630 1220 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b1
pc"
color="8 9"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 830 1240 1630 1640 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pc
b2"
color="9 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 830 1660 1630 2060 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pc
b3"
color="9 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 10 390 810 790 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.x0_n
x1.x1_n"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 10 820 810 1220 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.b3_n
x1.b2_n
x1.b1_n
x1.b0_n"
color="4 5 6 8"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 10 1240 810 1640 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="en
pc"
color="8 9"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 10 1660 810 2060 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.a
x1.b
x1.c
x1.d"
color="4 5 6 8"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1780 90 2580 490 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x0
x1.x0_n"
color="8 4"
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
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/launcher.sym} -150 40 0 0 {name=h17 
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
C {devices/simulator_commands_shown.sym} 530 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

Ven en 0 PWL (0ms 0V 20ms 0V 22ms 1.8V)
VPC PC 0 PWL(0ms 0V .9ms 0V 1ms 1.8V)
* Ven en 0 PWL (0ms 0V 3ms 0V 3.1ms 1.8V 9.8ms 1.8V 9.9ms 0V )
* VPC PC 0 PWL(0ms 0V .9ms 0V 1ms 1.8V 10ms 1.8V 10.1ms 0V 10.9ms 0V 11ms 1.8V 20ms 1.8V 20.1ms 0V 20.9ms 0V 21ms 1.8V 30ms 1.8V 30.1ms 0V 30.9ms 0V 31ms 1.8V)
* Vx0 x0 0 PWL(0ms 0V 9.9ms 0V 10ms 1.8V 19.9ms 1.8V 20ms 0V 29.9ms 0V 30ms 1.8V )
* Vx1 x1 0 PWL(0ms 0V 9.9ms 0V 10ms 0V 19.9ms 0V 20ms 1.8V)

.control
tran 1us 50ms
write testbench.raw
.endc
"}
C {devices/lab_pin.sym} 420 120 0 0 {name=p5 sig_type=std_logic lab=x1}
C {devices/lab_pin.sym} 420 100 0 0 {name=p6 sig_type=std_logic lab=x0}
C {devices/lab_pin.sym} 420 160 0 0 {name=p11 sig_type=std_logic lab=PC}
C {devices/lab_pin.sym} 420 140 0 0 {name=p12 sig_type=std_logic lab=en}
C {devices/vsource.sym} 100 140 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 100 110 0 0 {name=p14 sig_type=std_logic lab=x1}
C {devices/gnd.sym} 100 170 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 170 110 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 170 140 0 0 {name=l3 lab=GND
value=x0}
C {devices/lab_pin.sym} 170 80 0 0 {name=p13 sig_type=std_logic lab=x0}
