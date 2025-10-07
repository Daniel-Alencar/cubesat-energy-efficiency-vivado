// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:MPU6050_ctrl:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_MPU6050_ctrl_0_0 (
  clk_in,
  n_rst,
  i2c_ready_in,
  i2c_wr_valid_in,
  i2c_rd_valid_in,
  i2c_rd_data_in,
  uart_rx_valid_in,
  uart_rx_data_in,
  uart_tx_ready_in,
  uart_tx_valid_in,
  i2c_rd_wr,
  i2c_continuous,
  i2c_en,
  i2c_address,
  i2c_data_bytes,
  i2c_wr_data,
  uart_tx_en,
  uart_tx_data
);

input wire clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME n_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 n_rst RST" *)
input wire n_rst;
input wire i2c_ready_in;
input wire i2c_wr_valid_in;
input wire i2c_rd_valid_in;
input wire [7 : 0] i2c_rd_data_in;
input wire uart_rx_valid_in;
input wire [7 : 0] uart_rx_data_in;
input wire uart_tx_ready_in;
input wire uart_tx_valid_in;
output wire i2c_rd_wr;
output wire i2c_continuous;
output wire i2c_en;
output wire [6 : 0] i2c_address;
output wire [5 : 0] i2c_data_bytes;
output wire [7 : 0] i2c_wr_data;
output wire uart_tx_en;
output wire [7 : 0] uart_tx_data;

  MPU6050_ctrl inst (
    .clk_in(clk_in),
    .n_rst(n_rst),
    .i2c_ready_in(i2c_ready_in),
    .i2c_wr_valid_in(i2c_wr_valid_in),
    .i2c_rd_valid_in(i2c_rd_valid_in),
    .i2c_rd_data_in(i2c_rd_data_in),
    .uart_rx_valid_in(uart_rx_valid_in),
    .uart_rx_data_in(uart_rx_data_in),
    .uart_tx_ready_in(uart_tx_ready_in),
    .uart_tx_valid_in(uart_tx_valid_in),
    .i2c_rd_wr(i2c_rd_wr),
    .i2c_continuous(i2c_continuous),
    .i2c_en(i2c_en),
    .i2c_address(i2c_address),
    .i2c_data_bytes(i2c_data_bytes),
    .i2c_wr_data(i2c_wr_data),
    .uart_tx_en(uart_tx_en),
    .uart_tx_data(uart_tx_data)
  );
endmodule
