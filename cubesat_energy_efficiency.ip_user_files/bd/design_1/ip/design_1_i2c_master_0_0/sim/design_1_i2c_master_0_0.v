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


// IP VLNV: xilinx.com:module_ref:i2c_master:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_i2c_master_0_0 (
  clk_in,
  n_rst,
  rd_wr_in,
  continuous_in,
  enable_in,
  address_in,
  data_bytes_in,
  wr_data_in,
  ready_out,
  wr_valid_out,
  rd_valid_out,
  rd_data_out,
  value_state,
  SCL,
  SDA
);

input wire clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME n_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 n_rst RST" *)
input wire n_rst;
input wire rd_wr_in;
input wire continuous_in;
input wire enable_in;
input wire [6 : 0] address_in;
input wire [5 : 0] data_bytes_in;
input wire [7 : 0] wr_data_in;
output wire ready_out;
output wire wr_valid_out;
output wire rd_valid_out;
output wire [7 : 0] rd_data_out;
output wire [3 : 0] value_state;
inout wire SCL;
inout wire SDA;

  i2c_master #(
    .CLK_IN_FREQ_MHZ(96),
    .SCL_FREQ_KHZ(96),
    .RETRY_NUM(3)
  ) inst (
    .clk_in(clk_in),
    .n_rst(n_rst),
    .rd_wr_in(rd_wr_in),
    .continuous_in(continuous_in),
    .enable_in(enable_in),
    .address_in(address_in),
    .data_bytes_in(data_bytes_in),
    .wr_data_in(wr_data_in),
    .ready_out(ready_out),
    .wr_valid_out(wr_valid_out),
    .rd_valid_out(rd_valid_out),
    .rd_data_out(rd_data_out),
    .value_state(value_state),
    .SCL(SCL),
    .SDA(SDA)
  );
endmodule
