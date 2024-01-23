// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Mon Jan  8 15:50:36 2024
// Host        : OXPS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/gordo/Dropbox/Xilinx/Projects/project_Clocked_AND_PZ2/project_Clocked_AND_PZ2.sim/sim_1/synth/timing/xsim/AND_GATE_tb_time_synth.v
// Design      : AND_GATE
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module AND_GATE
   (a,
    b,
    c,
    CLK_IN,
    rst);
  input a;
  input b;
  output c;
  input CLK_IN;
  input rst;

  wire CLK_IN;
  wire CLK_IN_IBUF;
  wire CLK_IN_IBUF_BUFG;
  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_OBUF;
  wire c_i_1_n_0;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("AND_GATE_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IN_IBUF_BUFG_inst
       (.I(CLK_IN_IBUF),
        .O(CLK_IN_IBUF_BUFG));
  IBUF CLK_IN_IBUF_inst
       (.I(CLK_IN),
        .O(CLK_IN_IBUF));
  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  LUT2 #(
    .INIT(4'h8)) 
    c_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .O(c_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    c_reg
       (.C(CLK_IN_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(c_i_1_n_0),
        .Q(c_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
