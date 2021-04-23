### This file is a general .xdc for the DSDB rev. C
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock Signal
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { sysclk_125mhz }]; #IO_L12P_T1_MRCC_34 Sch=sysclk_125mhz
create_clock -name sysclk_125mhz -period 8 [get_ports { sysclk_125mhz }];

# LEDs
set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L12P_T1_MRCC_13 Sch=led[0]
set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L12N_T1_MRCC_13 Sch=led[1]
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L23P_T3_13 Sch=led[2]
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L23N_T3_13 Sch=led[3]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; #IO_L1P_T0_13 Sch=led[4]
set_property -dict { PACKAGE_PIN W12   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; #IO_L4N_T0_13 Sch=led[5]
set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS33 } [get_ports { led[6] }]; #IO_L3P_T0_DQS_13 Sch=led[6]
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { led[7] }]; #IO_L2P_T0_13 Sch=led[7]

# Buttons
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L5P_T0_13 Sch=btn[0]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4P_T0_13 Sch=btn[1]
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_25_13 Sch=btn[2]
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L13P_T2_MRCC_13 Sch=btn[3]

# Switches
set_property -dict { PACKAGE_PIN T6    IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_13 Sch=sw[0]
set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L22N_T3_13 Sch=sw[1]
set_property -dict { PACKAGE_PIN T4    IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L20P_T3_13 Sch=sw[2]
set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L21N_T3_DQS_13 Sch=sw[3]
set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33 } [get_ports { sw[4] }]; #IO_L2N_T0_13 Sch=sw[4]
set_property -dict { PACKAGE_PIN U9    IOSTANDARD LVCMOS33 } [get_ports { sw[5] }]; #IO_L6N_T0_VREF_13 Sch=sw[5]
set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS33 } [get_ports { sw[6] }]; #IO_L3N_T0_DQS_13 Sch=sw[6]
set_property -dict { PACKAGE_PIN V9    IOSTANDARD LVCMOS33 } [get_ports { sw[7] }]; #IO_L1N_T0_13 Sch=sw[7]

# Seven Segment Display
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { sseg_an[0] }]; #IO_L11P_T1_SRCC_34 Sch=sseg_an[0]
set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { sseg_an[1] }]; #IO_L19N_T3_VREF_35 Sch=sseg_an[1]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { sseg_an[2] }]; #IO_L7P_T1_34 Sch=sseg_an[2]
set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { sseg_an[3] }]; #IO_L9P_T1_DQS_34 Sch=sseg_an[3]
set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { sseg_ca    }]; #IO_L19P_T3_35 Sch=sseg_ca
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { sseg_cb    }]; #IO_0_35 Sch=sseg_cb
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { sseg_cc    }]; #IO_L7N_T1_34 Sch=sseg_cc
set_property -dict { PACKAGE_PIN K21   IOSTANDARD LVCMOS33 } [get_ports { sseg_cd    }]; #IO_L9N_T1_DQS_34 Sch=sseg_cd
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { sseg_ce    }]; #IO_L13N_T2_MRCC_34 Sch=sseg_ce
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { sseg_cf    }]; #IO_25_35 Sch=sseg_cf
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { sseg_cg    }]; #IO_L12N_T1_MRCC_34 Sch=sseg_cg
set_property -dict { PACKAGE_PIN K20   IOSTANDARD LVCMOS33 } [get_ports { sseg_dp    }]; #IO_L11N_T1_SRCC_34 Sch=sseg_dp

# NI ELVIS Pin Digital I/O
# Added by Matthew Tang 9th Dec 2020
# bits 7-0
set_property -dict { PACKAGE_PIN Y20   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[0] }]; 
set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[1] }]; 
set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[2] }]; 
set_property -dict { PACKAGE_PIN AB16  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[3] }]; 
set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[4] }]; 
set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[5] }]; 
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[6] }]; 
set_property -dict { PACKAGE_PIN AA14  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[7] }]; 
# bits 15-8
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[8] }]; 
set_property -dict { PACKAGE_PIN AA19  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[9] }]; 
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[10] }]; 
set_property -dict { PACKAGE_PIN AB19  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[11] }]; 
set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[12] }]; 
set_property -dict { PACKAGE_PIN AA17  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[13] }]; 
set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[14] }]; 
set_property -dict { PACKAGE_PIN AB17  IOSTANDARD LVCMOS33 } [get_ports { elvis_dio[15] }]; 

# Breadboard Digital I/O
# RESERVED FOR FUTURE DEVELOPMENT
#set_property -dict { PACKAGE_PIN AA13  IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[0] }]; #IO_L23N_T3_33 Sch=bb_s_dio[0]
#set_property -dict { PACKAGE_PIN AB14  IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[1] }]; #IO_L24P_T3_33 Sch=bb_s_dio[1]
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[2] }]; #IO_L14N_T2_SRCC_33 Sch=bb_s_dio[2]
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[3] }]; #IO_L13N_T2_MRCC_33 Sch=bb_s_dio[3]
#set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[4] }]; #IO_L13P_T2_MRCC_33 Sch=bb_s_dio[4]
#set_property -dict { PACKAGE_PIN Y15   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[5] }]; #IO_L21N_T3_DQS_33 Sch=bb_s_dio[5]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[6] }]; #IO_L1N_T0_34 Sch=bb_s_dio[6]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { bb_s_dio[7] }]; #IO_L3N_T0_DQS_34 Sch=bb_s_dio[7]
