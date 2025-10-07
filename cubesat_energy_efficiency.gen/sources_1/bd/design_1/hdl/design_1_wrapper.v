
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Oct  7 12:36:44 2025
//Host        : trabalho running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SCL,
    SDA,
    dev_clk,
    rx,
    tx);
  inout SCL;
  inout SDA;
  input dev_clk;
  input rx;
  output tx;

  wire SCL;
  wire SDA;
  wire dev_clk;
  wire rx;
  wire tx;

  design_1 design_1_i
       (.SCL(SCL),
        .SDA(SDA),
        .dev_clk(dev_clk),
        .rx(rx),
        .tx(tx));
endmodule
