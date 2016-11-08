// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Tue Nov  8 19:19:11 2016
// Host        : jon-GA-MA770T-ES3 running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -force ./cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : bsp
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD4
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module RAM128X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD10
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD100
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD101
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD102
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD103
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD104
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD105
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD106
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD107
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD108
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD109
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD11
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD110
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD111
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD112
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD113
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD114
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD115
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD116
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD117
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD118
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD119
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD12
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD120
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD121
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD122
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD123
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD124
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD125
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD126
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD127
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD128
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD129
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD13
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD130
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD131
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD132
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD133
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD134
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD135
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD136
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD137
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD138
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD139
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD14
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD140
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD141
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD142
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD143
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD144
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD145
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD146
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD147
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD148
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD149
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD15
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD150
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD151
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD152
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD153
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD154
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD155
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD156
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD157
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD158
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD159
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD16
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD160
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD161
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD162
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD163
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD164
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD165
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD166
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD167
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD168
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD169
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD17
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD170
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD171
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD172
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD173
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD174
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD175
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD176
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD177
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD178
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD179
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD18
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD180
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD181
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD182
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD183
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD184
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD185
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD186
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD187
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD188
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD189
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD19
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD190
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD191
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD192
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD193
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD194
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD195
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD196
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD197
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD198
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD199
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD20
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD200
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD201
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD202
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD203
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD204
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD205
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD206
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD207
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD208
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD209
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD21
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD210
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD211
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD212
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD213
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD214
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD215
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD216
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD217
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD218
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD219
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD22
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD220
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD221
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD222
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD223
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD224
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD225
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD226
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD227
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD228
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD229
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD23
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD230
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD231
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD232
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD233
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD234
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD235
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD236
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD237
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD238
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD239
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD24
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD240
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD241
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD242
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD243
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD244
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD245
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD246
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD247
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD248
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD249
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD25
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD250
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD251
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD252
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD253
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD254
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD255
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD256
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD257
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD258
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD259
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD26
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD260
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD261
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD262
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD263
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD264
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD265
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD266
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD267
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD268
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD269
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD27
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD270
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD271
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD272
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD273
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD274
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD275
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD276
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD277
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD278
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD279
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD28
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD280
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD281
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD282
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD283
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD284
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD285
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD286
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD287
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD288
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD289
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD29
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD290
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD291
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD292
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD293
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD294
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD295
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD296
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD297
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD298
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD299
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD30
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD300
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD301
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD302
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD303
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD304
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD305
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD306
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD307
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD308
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD309
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD31
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD310
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD311
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD312
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD313
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD314
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD315
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD316
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD317
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD318
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD319
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD32
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD320
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD321
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD322
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD323
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD324
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD325
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD326
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD327
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD328
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD329
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD33
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD330
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD331
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD332
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD333
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD334
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD335
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD336
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD337
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD338
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD339
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD34
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD340
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD341
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD342
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD343
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD344
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD345
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD346
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD347
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD348
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD349
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD35
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD350
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD351
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD352
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD353
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD354
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD355
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD356
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD357
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD358
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD359
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD36
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD360
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD361
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD362
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD363
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD364
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD365
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD366
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD367
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD368
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD369
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD37
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD370
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD371
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD372
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD373
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(