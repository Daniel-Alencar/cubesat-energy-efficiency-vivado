//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Oct  7 12:36:44 2025
//Host        : trabalho running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SCL,
    SDA,
    dev_clk,
    rx,
    tx);
  inout SCL;
  inout SDA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DEV_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DEV_CLK, CLK_DOMAIN design_1_dev_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input dev_clk;
  input rx;
  output tx;

  wire [6:0]MPU6050_ctrl_0_i2c_address;
  wire MPU6050_ctrl_0_i2c_continuous;
  wire [5:0]MPU6050_ctrl_0_i2c_data_bytes;
  wire MPU6050_ctrl_0_i2c_en;
  wire MPU6050_ctrl_0_i2c_rd_wr;
  wire [7:0]MPU6050_ctrl_0_i2c_wr_data;
  wire Net;
  wire Net1;
  wire clk_wiz_0_clk_out1;
  wire dev_clk_1;
  wire [7:0]i2c_master_0_rd_data_out;
  wire i2c_master_0_rd_valid_out;
  wire i2c_master_0_ready_out;
  wire i2c_master_0_wr_valid_out;
  wire power_on_rst_0_n_rst_out;
  wire rx_1;
  wire uart_tx_0_tx;

  assign dev_clk_1 = dev_clk;
  assign rx_1 = rx;
  assign tx = uart_tx_0_tx;
  design_1_MPU6050_ctrl_0_0 MPU6050_ctrl_0
       (.clk_in(clk_wiz_0_clk_out1),
        .i2c_address(MPU6050_ctrl_0_i2c_address),
        .i2c_continuous(MPU6050_ctrl_0_i2c_continuous),
        .i2c_data_bytes(MPU6050_ctrl_0_i2c_data_bytes),
        .i2c_en(MPU6050_ctrl_0_i2c_en),
        .i2c_rd_data_in(i2c_master_0_rd_data_out),
        .i2c_rd_valid_in(i2c_master_0_rd_valid_out),
        .i2c_rd_wr(MPU6050_ctrl_0_i2c_rd_wr),
        .i2c_ready_in(i2c_master_0_ready_out),
        .i2c_wr_data(MPU6050_ctrl_0_i2c_wr_data),
        .i2c_wr_valid_in(i2c_master_0_wr_valid_out),
        .n_rst(power_on_rst_0_n_rst_out),
        .uart_rx_data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .uart_rx_valid_in(1'b0),
        .uart_tx_ready_in(1'b0),
        .uart_tx_valid_in(1'b0));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(dev_clk_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_i2c_master_0_0 i2c_master_0
       (.SCL(SCL),
        .SDA(SDA),
        .address_in(MPU6050_ctrl_0_i2c_address),
        .clk_in(clk_wiz_0_clk_out1),
        .continuous_in(MPU6050_ctrl_0_i2c_continuous),
        .data_bytes_in(MPU6050_ctrl_0_i2c_data_bytes),
        .enable_in(MPU6050_ctrl_0_i2c_en),
        .n_rst(power_on_rst_0_n_rst_out),
        .rd_data_out(i2c_master_0_rd_data_out),
        .rd_valid_out(i2c_master_0_rd_valid_out),
        .rd_wr_in(MPU6050_ctrl_0_i2c_rd_wr),
        .ready_out(i2c_master_0_ready_out),
        .wr_data_in(MPU6050_ctrl_0_i2c_wr_data),
        .wr_valid_out(i2c_master_0_wr_valid_out));
  design_1_power_on_rst_0_0 power_on_rst_0
       (.clk_in(clk_wiz_0_clk_out1),
        .n_rst_out(power_on_rst_0_n_rst_out));
  design_1_uart_rx_0_0 uart_rx_0
       (.clk_in(clk_wiz_0_clk_out1),
        .n_rst(power_on_rst_0_n_rst_out),
        .rx(rx_1));
  design_1_uart_tx_0_0 uart_tx_0
       (.clk_in(clk_wiz_0_clk_out1),
        .data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .n_rst(power_on_rst_0_n_rst_out),
        .tx(uart_tx_0_tx),
        .uart_en(1'b0));
endmodule
