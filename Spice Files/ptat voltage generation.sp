*** ptat voltage generation *** 
.lib "/home/vsduser/cad_vsd/eda-technology/sky130/models/spice/models/sky130.lib.spice tt"
.include "/home/vsduser/cad_vsd/eda-technology/sky130/models/spice/models/sky130_fd_pr__model_pnp.model.spice" 

.global vdd gnd
.temp 27

*** VCVS defination ***
e1 ra1 qp1 net2 gnd gain=1000

** mosfet defination ** 
xmp1 q1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4
xmp2 q1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4

**resistor defination**
xra ra1 qp2 gnd sky130_fd_pr__res_high_po_ip41 l=30

***bjt defination***
xqp1 gnd gnd qp1 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1
xqp2 gnd gnd qp2 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=8
 
