// (C) 1992-2016 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 
    


/////////////////////////////////////////////////////////////////
// MODULE net_system
/////////////////////////////////////////////////////////////////
module net_system
(
   input logic clock,
   input logic clock2x,
   input logic resetn,
   // AVS avs_convLayer_cra
   input logic avs_convLayer_cra_enable,
   input logic avs_convLayer_cra_read,
   input logic avs_convLayer_cra_write,
   input logic [4:0] avs_convLayer_cra_address,
   input logic [63:0] avs_convLayer_cra_writedata,
   input logic [7:0] avs_convLayer_cra_byteenable,
   output logic [63:0] avs_convLayer_cra_readdata,
   output logic avs_convLayer_cra_readdatavalid,
   // AVS avs_dataLayer_cra
   input logic avs_dataLayer_cra_enable,
   input logic avs_dataLayer_cra_read,
   input logic avs_dataLayer_cra_write,
   input logic [4:0] avs_dataLayer_cra_address,
   input logic [63:0] avs_dataLayer_cra_writedata,
   input logic [7:0] avs_dataLayer_cra_byteenable,
   output logic [63:0] avs_dataLayer_cra_readdata,
   output logic avs_dataLayer_cra_readdatavalid,
   // AVS avs_outputLayer_cra
   input logic avs_outputLayer_cra_enable,
   input logic avs_outputLayer_cra_read,
   input logic avs_outputLayer_cra_write,
   input logic [4:0] avs_outputLayer_cra_address,
   input logic [63:0] avs_outputLayer_cra_writedata,
   input logic [7:0] avs_outputLayer_cra_byteenable,
   output logic [63:0] avs_outputLayer_cra_readdata,
   output logic avs_outputLayer_cra_readdatavalid,
   // AVS avs_paddingLayer_cra
   input logic avs_paddingLayer_cra_enable,
   input logic avs_paddingLayer_cra_read,
   input logic avs_paddingLayer_cra_write,
   input logic [4:0] avs_paddingLayer_cra_address,
   input logic [63:0] avs_paddingLayer_cra_writedata,
   input logic [7:0] avs_paddingLayer_cra_byteenable,
   output logic [63:0] avs_paddingLayer_cra_readdata,
   output logic avs_paddingLayer_cra_readdatavalid,
   // AVS avs_poolingLayer_cra
   input logic avs_poolingLayer_cra_enable,
   input logic avs_poolingLayer_cra_read,
   input logic avs_poolingLayer_cra_write,
   input logic [4:0] avs_poolingLayer_cra_address,
   input logic [63:0] avs_poolingLayer_cra_writedata,
   input logic [7:0] avs_poolingLayer_cra_byteenable,
   output logic [63:0] avs_poolingLayer_cra_readdata,
   output logic avs_poolingLayer_cra_readdatavalid,
   // AVS avs_reluLayer_cra
   input logic avs_reluLayer_cra_enable,
   input logic avs_reluLayer_cra_read,
   input logic avs_reluLayer_cra_write,
   input logic [4:0] avs_reluLayer_cra_address,
   input logic [63:0] avs_reluLayer_cra_writedata,
   input logic [7:0] avs_reluLayer_cra_byteenable,
   output logic [63:0] avs_reluLayer_cra_readdata,
   output logic avs_reluLayer_cra_readdatavalid,
   output logic kernel_irq,
   // AVM avm_memgmem0_port_0_0_rw
   output logic avm_memgmem0_port_0_0_rw_enable,
   output logic avm_memgmem0_port_0_0_rw_read,
   output logic avm_memgmem0_port_0_0_rw_write,
   output logic [4:0] avm_memgmem0_port_0_0_rw_burstcount,
   output logic [30:0] avm_memgmem0_port_0_0_rw_address,
   output logic [511:0] avm_memgmem0_port_0_0_rw_writedata,
   output logic [63:0] avm_memgmem0_port_0_0_rw_byteenable,
   input logic avm_memgmem0_port_0_0_rw_waitrequest,
   input logic [511:0] avm_memgmem0_port_0_0_rw_readdata,
   input logic avm_memgmem0_port_0_0_rw_readdatavalid,
   input logic avm_memgmem0_port_0_0_rw_writeack,
   // AVM avm_memgmem0_port_1_0_rw
   output logic avm_memgmem0_port_1_0_rw_enable,
   output logic avm_memgmem0_port_1_0_rw_read,
   output logic avm_memgmem0_port_1_0_rw_write,
   output logic [4:0] avm_memgmem0_port_1_0_rw_burstcount,
   output logic [30:0] avm_memgmem0_port_1_0_rw_address,
   output logic [511:0] avm_memgmem0_port_1_0_rw_writedata,
   output logic [63:0] avm_memgmem0_port_1_0_rw_byteenable,
   input logic avm_memgmem0_port_1_0_rw_waitrequest,
   input logic [511:0] avm_memgmem0_port_1_0_rw_readdata,
   input logic avm_memgmem0_port_1_0_rw_readdatavalid,
   input logic avm_memgmem0_port_1_0_rw_writeack
);
   logic convLayer_start;
   logic [0:0] convLayer_start_chain;
   logic [0:0] convLayer_start_kernel_copy;
   logic [0:0] convLayer_start_task_fd;
   logic [0:0] convLayer_start_finish_element;
   logic convLayer_finish;
   logic [0:0] convLayer_finish_kernel_copy;
   logic [0:0] convLayer_finish_chain;
   logic [31:0] convLayer_global_size [2:0];
   logic [31:0] convLayer_num_groups [2:0];
   logic [31:0] convLayer_local_size [2:0];
   logic [31:0] convLayer_global_offset [2:0];
   logic [31:0] convLayer_work_dim;
   logic [31:0] convLayer_wg_size;
   logic [0:0] convLayer_wg_disp_stall_in;
   logic [0:0] convLayer_wg_disp_valid_out;
   logic convLayer_wg_disp_start_out;
   logic [31:0] convLayer_wg_disp_group_id_out [2:0];
   logic [31:0] convLayer_wg_disp_global_id_base_out [2:0];
   logic convLayer_wg_disp_dispatched_all_groups;
   logic [31:0] convLayer_global_id [1][2:0];
   logic [31:0] convLayer_local_id [1][2:0];
   logic [31:0] convLayer_group_id [1][2:0];
   logic [0:0] convLayer_pending_write;
   logic [0:0] convLayer_lsu_active;
   logic [0:0] convLayer_valid_in;
   logic [0:0] convLayer_valid_out;
   logic [0:0] convLayer_stall_in;
   logic [0:0] convLayer_stall_out;
   logic convLayer_cra_pending_write;
   logic convLayer_cra_lsu_active;
   logic convLayer_cra_valid_in;
   logic [383:0] convLayer_kernel_arguments;
   logic dataLayer_start;
   logic [0:0] dataLayer_start_chain;
   logic [0:0] dataLayer_start_kernel_copy;
   logic [0:0] dataLayer_start_task_fd;
   logic [0:0] dataLayer_start_finish_element;
   logic dataLayer_finish;
   logic [0:0] dataLayer_finish_kernel_copy;
   logic [0:0] dataLayer_finish_chain;
   logic [31:0] dataLayer_global_size [2:0];
   logic [31:0] dataLayer_num_groups [2:0];
   logic [31:0] dataLayer_local_size [2:0];
   logic [31:0] dataLayer_global_offset [2:0];
   logic [31:0] dataLayer_work_dim;
   logic [31:0] dataLayer_wg_size;
   logic [0:0] dataLayer_wg_disp_stall_in;
   logic [0:0] dataLayer_wg_disp_valid_out;
   logic dataLayer_wg_disp_start_out;
   logic [31:0] dataLayer_wg_disp_group_id_out [2:0];
   logic [31:0] dataLayer_wg_disp_global_id_base_out [2:0];
   logic dataLayer_wg_disp_dispatched_all_groups;
   logic [31:0] dataLayer_global_id [1][2:0];
   logic [31:0] dataLayer_local_id [1][2:0];
   logic [31:0] dataLayer_group_id [1][2:0];
   logic [0:0] dataLayer_pending_write;
   logic [0:0] dataLayer_lsu_active;
   logic [0:0] dataLayer_valid_in;
   logic [0:0] dataLayer_valid_out;
   logic [0:0] dataLayer_stall_in;
   logic [0:0] dataLayer_stall_out;
   logic dataLayer_cra_pending_write;
   logic dataLayer_cra_lsu_active;
   logic dataLayer_cra_valid_in;
   logic [255:0] dataLayer_kernel_arguments;
   logic outputLayer_start;
   logic [0:0] outputLayer_start_chain;
   logic [0:0] outputLayer_start_kernel_copy;
   logic [0:0] outputLayer_start_task_fd;
   logic [0:0] outputLayer_start_finish_element;
   logic outputLayer_finish;
   logic [0:0] outputLayer_finish_kernel_copy;
   logic [0:0] outputLayer_finish_chain;
   logic [31:0] outputLayer_global_size [2:0];
   logic [31:0] outputLayer_num_groups [2:0];
   logic [31:0] outputLayer_local_size [2:0];
   logic [31:0] outputLayer_global_offset [2:0];
   logic [31:0] outputLayer_work_dim;
   logic [31:0] outputLayer_wg_size;
   logic [0:0] outputLayer_wg_disp_stall_in;
   logic [0:0] outputLayer_wg_disp_valid_out;
   logic outputLayer_wg_disp_start_out;
   logic [31:0] outputLayer_wg_disp_group_id_out [2:0];
   logic [31:0] outputLayer_wg_disp_global_id_base_out [2:0];
   logic outputLayer_wg_disp_dispatched_all_groups;
   logic [31:0] outputLayer_global_id [1][2:0];
   logic [31:0] outputLayer_local_id [1][2:0];
   logic [31:0] outputLayer_group_id [1][2:0];
   logic [0:0] outputLayer_pending_write;
   logic [0:0] outputLayer_lsu_active;
   logic [0:0] outputLayer_valid_in;
   logic [0:0] outputLayer_valid_out;
   logic [0:0] outputLayer_stall_in;
   logic [0:0] outputLayer_stall_out;
   logic outputLayer_cra_pending_write;
   logic outputLayer_cra_lsu_active;
   logic outputLayer_cra_valid_in;
   logic [255:0] outputLayer_kernel_arguments;
   logic paddingLayer_start;
   logic [0:0] paddingLayer_start_chain;
   logic [0:0] paddingLayer_start_kernel_copy;
   logic [0:0] paddingLayer_start_task_fd;
   logic [0:0] paddingLayer_start_finish_element;
   logic paddingLayer_finish;
   logic [0:0] paddingLayer_finish_kernel_copy;
   logic [0:0] paddingLayer_finish_chain;
   logic [31:0] paddingLayer_global_size [2:0];
   logic [31:0] paddingLayer_num_groups [2:0];
   logic [31:0] paddingLayer_local_size [2:0];
   logic [31:0] paddingLayer_global_offset [2:0];
   logic [31:0] paddingLayer_work_dim;
   logic [31:0] paddingLayer_wg_size;
   logic [0:0] paddingLayer_wg_disp_stall_in;
   logic [0:0] paddingLayer_wg_disp_valid_out;
   logic paddingLayer_wg_disp_start_out;
   logic [31:0] paddingLayer_wg_disp_group_id_out [2:0];
   logic [31:0] paddingLayer_wg_disp_global_id_base_out [2:0];
   logic paddingLayer_wg_disp_dispatched_all_groups;
   logic [31:0] paddingLayer_global_id [1][2:0];
   logic [31:0] paddingLayer_local_id [1][2:0];
   logic [31:0] paddingLayer_group_id [1][2:0];
   logic [0:0] paddingLayer_pending_write;
   logic [0:0] paddingLayer_lsu_active;
   logic [0:0] paddingLayer_valid_in;
   logic [0:0] paddingLayer_valid_out;
   logic [0:0] paddingLayer_stall_in;
   logic [0:0] paddingLayer_stall_out;
   logic paddingLayer_cra_pending_write;
   logic paddingLayer_cra_lsu_active;
   logic paddingLayer_cra_valid_in;
   logic [255:0] paddingLayer_kernel_arguments;
   logic poolingLayer_start;
   logic [0:0] poolingLayer_start_chain;
   logic [0:0] poolingLayer_start_kernel_copy;
   logic [0:0] poolingLayer_start_task_fd;
   logic [0:0] poolingLayer_start_finish_element;
   logic poolingLayer_finish;
   logic [0:0] poolingLayer_finish_kernel_copy;
   logic [0:0] poolingLayer_finish_chain;
   logic [31:0] poolingLayer_global_size [2:0];
   logic [31:0] poolingLayer_num_groups [2:0];
   logic [31:0] poolingLayer_local_size [2:0];
   logic [31:0] poolingLayer_global_offset [2:0];
   logic [31:0] poolingLayer_work_dim;
   logic [31:0] poolingLayer_wg_size;
   logic [0:0] poolingLayer_wg_disp_stall_in;
   logic [0:0] poolingLayer_wg_disp_valid_out;
   logic poolingLayer_wg_disp_start_out;
   logic [31:0] poolingLayer_wg_disp_group_id_out [2:0];
   logic [31:0] poolingLayer_wg_disp_global_id_base_out [2:0];
   logic poolingLayer_wg_disp_dispatched_all_groups;
   logic [31:0] poolingLayer_global_id [1][2:0];
   logic [31:0] poolingLayer_local_id [1][2:0];
   logic [31:0] poolingLayer_group_id [1][2:0];
   logic [0:0] poolingLayer_pending_write;
   logic [0:0] poolingLayer_lsu_active;
   logic [0:0] poolingLayer_valid_in;
   logic [0:0] poolingLayer_valid_out;
   logic [0:0] poolingLayer_stall_in;
   logic [0:0] poolingLayer_stall_out;
   logic poolingLayer_cra_pending_write;
   logic poolingLayer_cra_lsu_active;
   logic poolingLayer_cra_valid_in;
   logic [255:0] poolingLayer_kernel_arguments;
   logic reluLayer_start;
   logic [0:0] reluLayer_start_chain;
   logic [0:0] reluLayer_start_kernel_copy;
   logic [0:0] reluLayer_start_task_fd;
   logic [0:0] reluLayer_start_finish_element;
   logic reluLayer_finish;
   logic [0:0] reluLayer_finish_kernel_copy;
   logic [0:0] reluLayer_finish_chain;
   logic [31:0] reluLayer_global_size [2:0];
   logic [31:0] reluLayer_num_groups [2:0];
   logic [31:0] reluLayer_local_size [2:0];
   logic [31:0] reluLayer_global_offset [2:0];
   logic [31:0] reluLayer_work_dim;
   logic [31:0] reluLayer_wg_size;
   logic [0:0] reluLayer_wg_disp_stall_in;
   logic [0:0] reluLayer_wg_disp_valid_out;
   logic reluLayer_wg_disp_start_out;
   logic [31:0] reluLayer_wg_disp_group_id_out [2:0];
   logic [31:0] reluLayer_wg_disp_global_id_base_out [2:0];
   logic reluLayer_wg_disp_dispatched_all_groups;
   logic [31:0] reluLayer_global_id [1][2:0];
   logic [31:0] reluLayer_local_id [1][2:0];
   logic [31:0] reluLayer_group_id [1][2:0];
   logic [0:0] reluLayer_pending_write;
   logic [0:0] reluLayer_lsu_active;
   logic [0:0] reluLayer_valid_in;
   logic [0:0] reluLayer_valid_out;
   logic [0:0] reluLayer_stall_in;
   logic [0:0] reluLayer_stall_out;
   logic reluLayer_cra_pending_write;
   logic reluLayer_cra_lsu_active;
   logic reluLayer_cra_valid_in;
   logic [255:0] reluLayer_kernel_arguments;
   logic [5:0] kernel_irqs;
   logic avm_kernel_rd_enable [24];
   logic avm_kernel_rd_read [24];
   logic avm_kernel_rd_write [24];
   logic [4:0] avm_kernel_rd_burstcount [24];
   logic [31:0] avm_kernel_rd_address [24];
   logic [511:0] avm_kernel_rd_writedata [24];
   logic [63:0] avm_kernel_rd_byteenable [24];
   logic avm_kernel_rd_waitrequest [24];
   logic [511:0] avm_kernel_rd_readdata [24];
   logic avm_kernel_rd_readdatavalid [24];
   logic avm_kernel_rd_writeack [24];
   logic avm_kernel_wr_enable [6];
   logic avm_kernel_wr_read [6];
   logic avm_kernel_wr_write [6];
   logic [4:0] avm_kernel_wr_burstcount [6];
   logic [31:0] avm_kernel_wr_address [6];
   logic [511:0] avm_kernel_wr_writedata [6];
   logic [63:0] avm_kernel_wr_byteenable [6];
   logic avm_kernel_wr_waitrequest [6];
   logic [511:0] avm_kernel_wr_readdata [6];
   logic avm_kernel_wr_readdatavalid [6];
   logic avm_kernel_wr_writeack [6];
   logic ic_avm_enable [2];
   logic ic_avm_read [2];
   logic ic_avm_write [2];
   logic [4:0] ic_avm_burstcount [2];
   logic [30:0] ic_avm_address [2];
   logic [511:0] ic_avm_writedata [2];
   logic [63:0] ic_avm_byteenable [2];
   logic ic_avm_waitrequest [2];
   logic [511:0] ic_avm_readdata [2];
   logic ic_avm_readdatavalid [2];
   logic ic_avm_writeack [2];

   assign convLayer_start_chain[0] = convLayer_start;
   assign convLayer_finish_chain[0] = 1'b1;
   assign convLayer_cra_pending_write = |convLayer_pending_write;
   assign convLayer_cra_lsu_active = |convLayer_lsu_active;
   assign convLayer_cra_valid_in = |convLayer_valid_in;
   assign convLayer_stall_in = 0;
   // INST convLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   convLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(convLayer_start),
      .num_groups(convLayer_num_groups),
      .local_size(convLayer_local_size),
      .stall_in(convLayer_wg_disp_stall_in),
      .valid_out(convLayer_wg_disp_valid_out),
      .group_id_out(convLayer_wg_disp_group_id_out),
      .global_id_base_out(convLayer_wg_disp_global_id_base_out),
      .start_out(convLayer_wg_disp_start_out),
      .dispatched_all_groups(convLayer_wg_disp_dispatched_all_groups)
   );

   // INST convLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   convLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(convLayer_start),
      .wg_size(convLayer_wg_size),
      .wg_dispatch_valid_out(convLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(convLayer_wg_disp_stall_in),
      .dispatched_all_groups(convLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(convLayer_valid_out),
      .kernel_copy_stall_in(convLayer_stall_in),
      .pending_writes(convLayer_cra_pending_write),
      .finish(convLayer_finish)
   );

   // INST convLayer_cra_slave_inst of convLayer_function_cra_slave
   convLayer_function_cra_slave convLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(convLayer_start),
      .finish(convLayer_finish),
      .global_offset_0(convLayer_global_offset[0]),
      .global_offset_1(convLayer_global_offset[1]),
      .global_offset_2(convLayer_global_offset[2]),
      .work_dim(convLayer_work_dim),
      .has_a_lsu_active(convLayer_cra_lsu_active),
      .has_a_write_pending(convLayer_cra_pending_write),
      .valid_in(convLayer_cra_valid_in),
      .global_size_0(convLayer_global_size[0]),
      .global_size_1(convLayer_global_size[1]),
      .global_size_2(convLayer_global_size[2]),
      .num_groups_0(convLayer_num_groups[0]),
      .num_groups_1(convLayer_num_groups[1]),
      .num_groups_2(convLayer_num_groups[2]),
      .local_size_0(convLayer_local_size[0]),
      .local_size_1(convLayer_local_size[1]),
      .local_size_2(convLayer_local_size[2]),
      .workgroup_size(convLayer_wg_size),
      .kernel_arguments(convLayer_kernel_arguments),
      .cra_irq(kernel_irqs[0]),
      // AVS avs_cra
      .avs_cra_enable(avs_convLayer_cra_enable),
      .avs_cra_read(avs_convLayer_cra_read),
      .avs_cra_write(avs_convLayer_cra_write),
      .avs_cra_address(avs_convLayer_cra_address),
      .avs_cra_writedata(avs_convLayer_cra_writedata),
      .avs_cra_byteenable(avs_convLayer_cra_byteenable),
      .avs_cra_readdata(avs_convLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_convLayer_cra_readdatavalid)
   );

   // INST convLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   convLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(convLayer_wg_disp_start_out),
      .valid_in(convLayer_wg_disp_valid_out[0]),
      .stall_out(convLayer_wg_disp_stall_in[0]),
      .stall_in(convLayer_stall_out[0]),
      .valid_out(convLayer_valid_in[0]),
      .group_id_in(convLayer_wg_disp_group_id_out),
      .global_id_base_in(convLayer_wg_disp_global_id_base_out),
      .local_size(convLayer_local_size),
      .global_size(convLayer_global_size),
      .local_id(convLayer_local_id[0]),
      .global_id(convLayer_global_id[0]),
      .group_id(convLayer_group_id[0])
   );

   // INST convLayer_inst_0 of convLayer_top_wrapper_0
   convLayer_top_wrapper_0 convLayer_inst_0
   (
      .start(convLayer_start_kernel_copy[0]),
      .kernel_arguments(convLayer_kernel_arguments),
      .work_dim(convLayer_work_dim),
      .global_offset(convLayer_global_offset),
      .kernel_valid_out(convLayer_valid_out[0]),
      .has_a_write_pending(convLayer_pending_write[0]),
      .has_a_lsu_active(convLayer_lsu_active[0]),
      .global_id(convLayer_global_id[0]),
      .local_id(convLayer_local_id[0]),
      .group_id(convLayer_group_id[0]),
      .global_size(convLayer_global_size),
      .local_size(convLayer_local_size),
      .num_groups(convLayer_num_groups),
      .workgroup_size(convLayer_wg_size),
      .kernel_stall_out(convLayer_stall_out[0]),
      .kernel_valid_in(convLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_kernel_rd_enable[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_kernel_rd_read[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_kernel_rd_write[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_kernel_rd_burstcount[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_kernel_rd_address[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_kernel_rd_writedata[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_kernel_rd_byteenable[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_kernel_rd_waitrequest[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_kernel_rd_readdata[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_kernel_rd_readdatavalid[0]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_kernel_rd_writeack[0]),
      // AVM avm_local_bb1_ld__inst0
      .avm_local_bb1_ld__inst0_enable(avm_kernel_rd_enable[1]),
      .avm_local_bb1_ld__inst0_read(avm_kernel_rd_read[1]),
      .avm_local_bb1_ld__inst0_write(avm_kernel_rd_write[1]),
      .avm_local_bb1_ld__inst0_burstcount(avm_kernel_rd_burstcount[1]),
      .avm_local_bb1_ld__inst0_address(avm_kernel_rd_address[1]),
      .avm_local_bb1_ld__inst0_writedata(avm_kernel_rd_writedata[1]),
      .avm_local_bb1_ld__inst0_byteenable(avm_kernel_rd_byteenable[1]),
      .avm_local_bb1_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[1]),
      .avm_local_bb1_ld__inst0_readdata(avm_kernel_rd_readdata[1]),
      .avm_local_bb1_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[1]),
      .avm_local_bb1_ld__inst0_writeack(avm_kernel_rd_writeack[1]),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_0143_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_enable(avm_kernel_rd_enable[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_read(avm_kernel_rd_read[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_write(avm_kernel_rd_write[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_burstcount(avm_kernel_rd_burstcount[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_address(avm_kernel_rd_address[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writedata(avm_kernel_rd_writedata[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_byteenable(avm_kernel_rd_byteenable[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_waitrequest(avm_kernel_rd_waitrequest[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdata(avm_kernel_rd_readdata[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdatavalid(avm_kernel_rd_readdatavalid[2]),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writeack(avm_kernel_rd_writeack[2]),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_0147_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_enable(avm_kernel_rd_enable[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_read(avm_kernel_rd_read[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_write(avm_kernel_rd_write[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_burstcount(avm_kernel_rd_burstcount[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_address(avm_kernel_rd_address[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writedata(avm_kernel_rd_writedata[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_byteenable(avm_kernel_rd_byteenable[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_waitrequest(avm_kernel_rd_waitrequest[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdata(avm_kernel_rd_readdata[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdatavalid(avm_kernel_rd_readdatavalid[3]),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writeack(avm_kernel_rd_writeack[3]),
      // AVM avm_local_bb5_ld__inst0
      .avm_local_bb5_ld__inst0_enable(avm_kernel_rd_enable[4]),
      .avm_local_bb5_ld__inst0_read(avm_kernel_rd_read[4]),
      .avm_local_bb5_ld__inst0_write(avm_kernel_rd_write[4]),
      .avm_local_bb5_ld__inst0_burstcount(avm_kernel_rd_burstcount[4]),
      .avm_local_bb5_ld__inst0_address(avm_kernel_rd_address[4]),
      .avm_local_bb5_ld__inst0_writedata(avm_kernel_rd_writedata[4]),
      .avm_local_bb5_ld__inst0_byteenable(avm_kernel_rd_byteenable[4]),
      .avm_local_bb5_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[4]),
      .avm_local_bb5_ld__inst0_readdata(avm_kernel_rd_readdata[4]),
      .avm_local_bb5_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[4]),
      .avm_local_bb5_ld__inst0_writeack(avm_kernel_rd_writeack[4]),
      // AVM avm_local_bb5_ld__u8_inst0
      .avm_local_bb5_ld__u8_inst0_enable(avm_kernel_rd_enable[5]),
      .avm_local_bb5_ld__u8_inst0_read(avm_kernel_rd_read[5]),
      .avm_local_bb5_ld__u8_inst0_write(avm_kernel_rd_write[5]),
      .avm_local_bb5_ld__u8_inst0_burstcount(avm_kernel_rd_burstcount[5]),
      .avm_local_bb5_ld__u8_inst0_address(avm_kernel_rd_address[5]),
      .avm_local_bb5_ld__u8_inst0_writedata(avm_kernel_rd_writedata[5]),
      .avm_local_bb5_ld__u8_inst0_byteenable(avm_kernel_rd_byteenable[5]),
      .avm_local_bb5_ld__u8_inst0_waitrequest(avm_kernel_rd_waitrequest[5]),
      .avm_local_bb5_ld__u8_inst0_readdata(avm_kernel_rd_readdata[5]),
      .avm_local_bb5_ld__u8_inst0_readdatavalid(avm_kernel_rd_readdatavalid[5]),
      .avm_local_bb5_ld__u8_inst0_writeack(avm_kernel_rd_writeack[5]),
      // AVM avm_local_bb6_ld__inst0
      .avm_local_bb6_ld__inst0_enable(avm_kernel_rd_enable[6]),
      .avm_local_bb6_ld__inst0_read(avm_kernel_rd_read[6]),
      .avm_local_bb6_ld__inst0_write(avm_kernel_rd_write[6]),
      .avm_local_bb6_ld__inst0_burstcount(avm_kernel_rd_burstcount[6]),
      .avm_local_bb6_ld__inst0_address(avm_kernel_rd_address[6]),
      .avm_local_bb6_ld__inst0_writedata(avm_kernel_rd_writedata[6]),
      .avm_local_bb6_ld__inst0_byteenable(avm_kernel_rd_byteenable[6]),
      .avm_local_bb6_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[6]),
      .avm_local_bb6_ld__inst0_readdata(avm_kernel_rd_readdata[6]),
      .avm_local_bb6_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[6]),
      .avm_local_bb6_ld__inst0_writeack(avm_kernel_rd_writeack[6]),
      // AVM avm_local_bb6_st_c0_exe120_inst0
      .avm_local_bb6_st_c0_exe120_inst0_enable(avm_kernel_wr_enable[0]),
      .avm_local_bb6_st_c0_exe120_inst0_read(avm_kernel_wr_read[0]),
      .avm_local_bb6_st_c0_exe120_inst0_write(avm_kernel_wr_write[0]),
      .avm_local_bb6_st_c0_exe120_inst0_burstcount(avm_kernel_wr_burstcount[0]),
      .avm_local_bb6_st_c0_exe120_inst0_address(avm_kernel_wr_address[0]),
      .avm_local_bb6_st_c0_exe120_inst0_writedata(avm_kernel_wr_writedata[0]),
      .avm_local_bb6_st_c0_exe120_inst0_byteenable(avm_kernel_wr_byteenable[0]),
      .avm_local_bb6_st_c0_exe120_inst0_waitrequest(avm_kernel_wr_waitrequest[0]),
      .avm_local_bb6_st_c0_exe120_inst0_readdata(avm_kernel_wr_readdata[0]),
      .avm_local_bb6_st_c0_exe120_inst0_readdatavalid(avm_kernel_wr_readdatavalid[0]),
      .avm_local_bb6_st_c0_exe120_inst0_writeack(avm_kernel_wr_writeack[0])
   );

   // INST convLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element convLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(convLayer_start_chain[0]),
      .start_kernel(convLayer_start_kernel_copy[0]),
      .start_finish_detector(convLayer_start_task_fd[0]),
      .start_finish_chain_element(convLayer_start_finish_element[0]),
      .start_chain()
   );

   assign dataLayer_start_chain[0] = dataLayer_start;
   assign dataLayer_finish_chain[0] = 1'b1;
   assign dataLayer_cra_pending_write = |dataLayer_pending_write;
   assign dataLayer_cra_lsu_active = |dataLayer_lsu_active;
   assign dataLayer_cra_valid_in = |dataLayer_valid_in;
   assign dataLayer_stall_in = 0;
   // INST dataLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   dataLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(dataLayer_start),
      .num_groups(dataLayer_num_groups),
      .local_size(dataLayer_local_size),
      .stall_in(dataLayer_wg_disp_stall_in),
      .valid_out(dataLayer_wg_disp_valid_out),
      .group_id_out(dataLayer_wg_disp_group_id_out),
      .global_id_base_out(dataLayer_wg_disp_global_id_base_out),
      .start_out(dataLayer_wg_disp_start_out),
      .dispatched_all_groups(dataLayer_wg_disp_dispatched_all_groups)
   );

   // INST dataLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   dataLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(dataLayer_start),
      .wg_size(dataLayer_wg_size),
      .wg_dispatch_valid_out(dataLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(dataLayer_wg_disp_stall_in),
      .dispatched_all_groups(dataLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(dataLayer_valid_out),
      .kernel_copy_stall_in(dataLayer_stall_in),
      .pending_writes(dataLayer_cra_pending_write),
      .finish(dataLayer_finish)
   );

   // INST dataLayer_cra_slave_inst of dataLayer_function_cra_slave
   dataLayer_function_cra_slave dataLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(dataLayer_start),
      .finish(dataLayer_finish),
      .global_offset_0(dataLayer_global_offset[0]),
      .global_offset_1(dataLayer_global_offset[1]),
      .global_offset_2(dataLayer_global_offset[2]),
      .work_dim(dataLayer_work_dim),
      .has_a_lsu_active(dataLayer_cra_lsu_active),
      .has_a_write_pending(dataLayer_cra_pending_write),
      .valid_in(dataLayer_cra_valid_in),
      .global_size_0(dataLayer_global_size[0]),
      .global_size_1(dataLayer_global_size[1]),
      .global_size_2(dataLayer_global_size[2]),
      .num_groups_0(dataLayer_num_groups[0]),
      .num_groups_1(dataLayer_num_groups[1]),
      .num_groups_2(dataLayer_num_groups[2]),
      .local_size_0(dataLayer_local_size[0]),
      .local_size_1(dataLayer_local_size[1]),
      .local_size_2(dataLayer_local_size[2]),
      .workgroup_size(dataLayer_wg_size),
      .kernel_arguments(dataLayer_kernel_arguments),
      .cra_irq(kernel_irqs[1]),
      // AVS avs_cra
      .avs_cra_enable(avs_dataLayer_cra_enable),
      .avs_cra_read(avs_dataLayer_cra_read),
      .avs_cra_write(avs_dataLayer_cra_write),
      .avs_cra_address(avs_dataLayer_cra_address),
      .avs_cra_writedata(avs_dataLayer_cra_writedata),
      .avs_cra_byteenable(avs_dataLayer_cra_byteenable),
      .avs_cra_readdata(avs_dataLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_dataLayer_cra_readdatavalid)
   );

   // INST dataLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   dataLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(dataLayer_wg_disp_start_out),
      .valid_in(dataLayer_wg_disp_valid_out[0]),
      .stall_out(dataLayer_wg_disp_stall_in[0]),
      .stall_in(dataLayer_stall_out[0]),
      .valid_out(dataLayer_valid_in[0]),
      .group_id_in(dataLayer_wg_disp_group_id_out),
      .global_id_base_in(dataLayer_wg_disp_global_id_base_out),
      .local_size(dataLayer_local_size),
      .global_size(dataLayer_global_size),
      .local_id(dataLayer_local_id[0]),
      .global_id(dataLayer_global_id[0]),
      .group_id(dataLayer_group_id[0])
   );

   // INST dataLayer_inst_0 of dataLayer_top_wrapper_0
   dataLayer_top_wrapper_0 dataLayer_inst_0
   (
      .start(dataLayer_start_kernel_copy[0]),
      .kernel_arguments(dataLayer_kernel_arguments),
      .work_dim(dataLayer_work_dim),
      .global_offset(dataLayer_global_offset),
      .kernel_valid_out(dataLayer_valid_out[0]),
      .has_a_write_pending(dataLayer_pending_write[0]),
      .has_a_lsu_active(dataLayer_lsu_active[0]),
      .global_id(dataLayer_global_id[0]),
      .local_id(dataLayer_local_id[0]),
      .group_id(dataLayer_group_id[0]),
      .global_size(dataLayer_global_size),
      .local_size(dataLayer_local_size),
      .num_groups(dataLayer_num_groups),
      .workgroup_size(dataLayer_wg_size),
      .kernel_stall_out(dataLayer_stall_out[0]),
      .kernel_valid_in(dataLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_kernel_rd_enable[7]),
      .avm_local_bb0_ld__inst0_read(avm_kernel_rd_read[7]),
      .avm_local_bb0_ld__inst0_write(avm_kernel_rd_write[7]),
      .avm_local_bb0_ld__inst0_burstcount(avm_kernel_rd_burstcount[7]),
      .avm_local_bb0_ld__inst0_address(avm_kernel_rd_address[7]),
      .avm_local_bb0_ld__inst0_writedata(avm_kernel_rd_writedata[7]),
      .avm_local_bb0_ld__inst0_byteenable(avm_kernel_rd_byteenable[7]),
      .avm_local_bb0_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[7]),
      .avm_local_bb0_ld__inst0_readdata(avm_kernel_rd_readdata[7]),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[7]),
      .avm_local_bb0_ld__inst0_writeack(avm_kernel_rd_writeack[7]),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_kernel_rd_enable[8]),
      .avm_local_bb2_ld__inst0_read(avm_kernel_rd_read[8]),
      .avm_local_bb2_ld__inst0_write(avm_kernel_rd_write[8]),
      .avm_local_bb2_ld__inst0_burstcount(avm_kernel_rd_burstcount[8]),
      .avm_local_bb2_ld__inst0_address(avm_kernel_rd_address[8]),
      .avm_local_bb2_ld__inst0_writedata(avm_kernel_rd_writedata[8]),
      .avm_local_bb2_ld__inst0_byteenable(avm_kernel_rd_byteenable[8]),
      .avm_local_bb2_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[8]),
      .avm_local_bb2_ld__inst0_readdata(avm_kernel_rd_readdata[8]),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[8]),
      .avm_local_bb2_ld__inst0_writeack(avm_kernel_rd_writeack[8]),
      // AVM avm_local_bb2_ld__u3_inst0
      .avm_local_bb2_ld__u3_inst0_enable(avm_kernel_rd_enable[9]),
      .avm_local_bb2_ld__u3_inst0_read(avm_kernel_rd_read[9]),
      .avm_local_bb2_ld__u3_inst0_write(avm_kernel_rd_write[9]),
      .avm_local_bb2_ld__u3_inst0_burstcount(avm_kernel_rd_burstcount[9]),
      .avm_local_bb2_ld__u3_inst0_address(avm_kernel_rd_address[9]),
      .avm_local_bb2_ld__u3_inst0_writedata(avm_kernel_rd_writedata[9]),
      .avm_local_bb2_ld__u3_inst0_byteenable(avm_kernel_rd_byteenable[9]),
      .avm_local_bb2_ld__u3_inst0_waitrequest(avm_kernel_rd_waitrequest[9]),
      .avm_local_bb2_ld__u3_inst0_readdata(avm_kernel_rd_readdata[9]),
      .avm_local_bb2_ld__u3_inst0_readdatavalid(avm_kernel_rd_readdatavalid[9]),
      .avm_local_bb2_ld__u3_inst0_writeack(avm_kernel_rd_writeack[9]),
      // AVM avm_local_bb2_st__inst0
      .avm_local_bb2_st__inst0_enable(avm_kernel_wr_enable[1]),
      .avm_local_bb2_st__inst0_read(avm_kernel_wr_read[1]),
      .avm_local_bb2_st__inst0_write(avm_kernel_wr_write[1]),
      .avm_local_bb2_st__inst0_burstcount(avm_kernel_wr_burstcount[1]),
      .avm_local_bb2_st__inst0_address(avm_kernel_wr_address[1]),
      .avm_local_bb2_st__inst0_writedata(avm_kernel_wr_writedata[1]),
      .avm_local_bb2_st__inst0_byteenable(avm_kernel_wr_byteenable[1]),
      .avm_local_bb2_st__inst0_waitrequest(avm_kernel_wr_waitrequest[1]),
      .avm_local_bb2_st__inst0_readdata(avm_kernel_wr_readdata[1]),
      .avm_local_bb2_st__inst0_readdatavalid(avm_kernel_wr_readdatavalid[1]),
      .avm_local_bb2_st__inst0_writeack(avm_kernel_wr_writeack[1])
   );

   // INST dataLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element dataLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(dataLayer_start_chain[0]),
      .start_kernel(dataLayer_start_kernel_copy[0]),
      .start_finish_detector(dataLayer_start_task_fd[0]),
      .start_finish_chain_element(dataLayer_start_finish_element[0]),
      .start_chain()
   );

   assign outputLayer_start_chain[0] = outputLayer_start;
   assign outputLayer_finish_chain[0] = 1'b1;
   assign outputLayer_cra_pending_write = |outputLayer_pending_write;
   assign outputLayer_cra_lsu_active = |outputLayer_lsu_active;
   assign outputLayer_cra_valid_in = |outputLayer_valid_in;
   assign outputLayer_stall_in = 0;
   // INST outputLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   outputLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(outputLayer_start),
      .num_groups(outputLayer_num_groups),
      .local_size(outputLayer_local_size),
      .stall_in(outputLayer_wg_disp_stall_in),
      .valid_out(outputLayer_wg_disp_valid_out),
      .group_id_out(outputLayer_wg_disp_group_id_out),
      .global_id_base_out(outputLayer_wg_disp_global_id_base_out),
      .start_out(outputLayer_wg_disp_start_out),
      .dispatched_all_groups(outputLayer_wg_disp_dispatched_all_groups)
   );

   // INST outputLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   outputLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(outputLayer_start),
      .wg_size(outputLayer_wg_size),
      .wg_dispatch_valid_out(outputLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(outputLayer_wg_disp_stall_in),
      .dispatched_all_groups(outputLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(outputLayer_valid_out),
      .kernel_copy_stall_in(outputLayer_stall_in),
      .pending_writes(outputLayer_cra_pending_write),
      .finish(outputLayer_finish)
   );

   // INST outputLayer_cra_slave_inst of outputLayer_function_cra_slave
   outputLayer_function_cra_slave outputLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(outputLayer_start),
      .finish(outputLayer_finish),
      .global_offset_0(outputLayer_global_offset[0]),
      .global_offset_1(outputLayer_global_offset[1]),
      .global_offset_2(outputLayer_global_offset[2]),
      .work_dim(outputLayer_work_dim),
      .has_a_lsu_active(outputLayer_cra_lsu_active),
      .has_a_write_pending(outputLayer_cra_pending_write),
      .valid_in(outputLayer_cra_valid_in),
      .global_size_0(outputLayer_global_size[0]),
      .global_size_1(outputLayer_global_size[1]),
      .global_size_2(outputLayer_global_size[2]),
      .num_groups_0(outputLayer_num_groups[0]),
      .num_groups_1(outputLayer_num_groups[1]),
      .num_groups_2(outputLayer_num_groups[2]),
      .local_size_0(outputLayer_local_size[0]),
      .local_size_1(outputLayer_local_size[1]),
      .local_size_2(outputLayer_local_size[2]),
      .workgroup_size(outputLayer_wg_size),
      .kernel_arguments(outputLayer_kernel_arguments),
      .cra_irq(kernel_irqs[2]),
      // AVS avs_cra
      .avs_cra_enable(avs_outputLayer_cra_enable),
      .avs_cra_read(avs_outputLayer_cra_read),
      .avs_cra_write(avs_outputLayer_cra_write),
      .avs_cra_address(avs_outputLayer_cra_address),
      .avs_cra_writedata(avs_outputLayer_cra_writedata),
      .avs_cra_byteenable(avs_outputLayer_cra_byteenable),
      .avs_cra_readdata(avs_outputLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_outputLayer_cra_readdatavalid)
   );

   // INST outputLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   outputLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(outputLayer_wg_disp_start_out),
      .valid_in(outputLayer_wg_disp_valid_out[0]),
      .stall_out(outputLayer_wg_disp_stall_in[0]),
      .stall_in(outputLayer_stall_out[0]),
      .valid_out(outputLayer_valid_in[0]),
      .group_id_in(outputLayer_wg_disp_group_id_out),
      .global_id_base_in(outputLayer_wg_disp_global_id_base_out),
      .local_size(outputLayer_local_size),
      .global_size(outputLayer_global_size),
      .local_id(outputLayer_local_id[0]),
      .global_id(outputLayer_global_id[0]),
      .group_id(outputLayer_group_id[0])
   );

   // INST outputLayer_inst_0 of outputLayer_top_wrapper_0
   outputLayer_top_wrapper_0 outputLayer_inst_0
   (
      .start(outputLayer_start_kernel_copy[0]),
      .kernel_arguments(outputLayer_kernel_arguments),
      .work_dim(outputLayer_work_dim),
      .global_offset(outputLayer_global_offset),
      .kernel_valid_out(outputLayer_valid_out[0]),
      .has_a_write_pending(outputLayer_pending_write[0]),
      .has_a_lsu_active(outputLayer_lsu_active[0]),
      .global_id(outputLayer_global_id[0]),
      .local_id(outputLayer_local_id[0]),
      .group_id(outputLayer_group_id[0]),
      .global_size(outputLayer_global_size),
      .local_size(outputLayer_local_size),
      .num_groups(outputLayer_num_groups),
      .workgroup_size(outputLayer_wg_size),
      .kernel_stall_out(outputLayer_stall_out[0]),
      .kernel_valid_in(outputLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_kernel_rd_enable[10]),
      .avm_local_bb0_ld__inst0_read(avm_kernel_rd_read[10]),
      .avm_local_bb0_ld__inst0_write(avm_kernel_rd_write[10]),
      .avm_local_bb0_ld__inst0_burstcount(avm_kernel_rd_burstcount[10]),
      .avm_local_bb0_ld__inst0_address(avm_kernel_rd_address[10]),
      .avm_local_bb0_ld__inst0_writedata(avm_kernel_rd_writedata[10]),
      .avm_local_bb0_ld__inst0_byteenable(avm_kernel_rd_byteenable[10]),
      .avm_local_bb0_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[10]),
      .avm_local_bb0_ld__inst0_readdata(avm_kernel_rd_readdata[10]),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[10]),
      .avm_local_bb0_ld__inst0_writeack(avm_kernel_rd_writeack[10]),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_kernel_rd_enable[11]),
      .avm_local_bb2_ld__inst0_read(avm_kernel_rd_read[11]),
      .avm_local_bb2_ld__inst0_write(avm_kernel_rd_write[11]),
      .avm_local_bb2_ld__inst0_burstcount(avm_kernel_rd_burstcount[11]),
      .avm_local_bb2_ld__inst0_address(avm_kernel_rd_address[11]),
      .avm_local_bb2_ld__inst0_writedata(avm_kernel_rd_writedata[11]),
      .avm_local_bb2_ld__inst0_byteenable(avm_kernel_rd_byteenable[11]),
      .avm_local_bb2_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[11]),
      .avm_local_bb2_ld__inst0_readdata(avm_kernel_rd_readdata[11]),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[11]),
      .avm_local_bb2_ld__inst0_writeack(avm_kernel_rd_writeack[11]),
      // AVM avm_local_bb2_st__inst0
      .avm_local_bb2_st__inst0_enable(avm_kernel_wr_enable[2]),
      .avm_local_bb2_st__inst0_read(avm_kernel_wr_read[2]),
      .avm_local_bb2_st__inst0_write(avm_kernel_wr_write[2]),
      .avm_local_bb2_st__inst0_burstcount(avm_kernel_wr_burstcount[2]),
      .avm_local_bb2_st__inst0_address(avm_kernel_wr_address[2]),
      .avm_local_bb2_st__inst0_writedata(avm_kernel_wr_writedata[2]),
      .avm_local_bb2_st__inst0_byteenable(avm_kernel_wr_byteenable[2]),
      .avm_local_bb2_st__inst0_waitrequest(avm_kernel_wr_waitrequest[2]),
      .avm_local_bb2_st__inst0_readdata(avm_kernel_wr_readdata[2]),
      .avm_local_bb2_st__inst0_readdatavalid(avm_kernel_wr_readdatavalid[2]),
      .avm_local_bb2_st__inst0_writeack(avm_kernel_wr_writeack[2])
   );

   // INST outputLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element outputLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(outputLayer_start_chain[0]),
      .start_kernel(outputLayer_start_kernel_copy[0]),
      .start_finish_detector(outputLayer_start_task_fd[0]),
      .start_finish_chain_element(outputLayer_start_finish_element[0]),
      .start_chain()
   );

   assign paddingLayer_start_chain[0] = paddingLayer_start;
   assign paddingLayer_finish_chain[0] = 1'b1;
   assign paddingLayer_cra_pending_write = |paddingLayer_pending_write;
   assign paddingLayer_cra_lsu_active = |paddingLayer_lsu_active;
   assign paddingLayer_cra_valid_in = |paddingLayer_valid_in;
   assign paddingLayer_stall_in = 0;
   // INST paddingLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   paddingLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(paddingLayer_start),
      .num_groups(paddingLayer_num_groups),
      .local_size(paddingLayer_local_size),
      .stall_in(paddingLayer_wg_disp_stall_in),
      .valid_out(paddingLayer_wg_disp_valid_out),
      .group_id_out(paddingLayer_wg_disp_group_id_out),
      .global_id_base_out(paddingLayer_wg_disp_global_id_base_out),
      .start_out(paddingLayer_wg_disp_start_out),
      .dispatched_all_groups(paddingLayer_wg_disp_dispatched_all_groups)
   );

   // INST paddingLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   paddingLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(paddingLayer_start),
      .wg_size(paddingLayer_wg_size),
      .wg_dispatch_valid_out(paddingLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(paddingLayer_wg_disp_stall_in),
      .dispatched_all_groups(paddingLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(paddingLayer_valid_out),
      .kernel_copy_stall_in(paddingLayer_stall_in),
      .pending_writes(paddingLayer_cra_pending_write),
      .finish(paddingLayer_finish)
   );

   // INST paddingLayer_cra_slave_inst of paddingLayer_function_cra_slave
   paddingLayer_function_cra_slave paddingLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(paddingLayer_start),
      .finish(paddingLayer_finish),
      .global_offset_0(paddingLayer_global_offset[0]),
      .global_offset_1(paddingLayer_global_offset[1]),
      .global_offset_2(paddingLayer_global_offset[2]),
      .work_dim(paddingLayer_work_dim),
      .has_a_lsu_active(paddingLayer_cra_lsu_active),
      .has_a_write_pending(paddingLayer_cra_pending_write),
      .valid_in(paddingLayer_cra_valid_in),
      .global_size_0(paddingLayer_global_size[0]),
      .global_size_1(paddingLayer_global_size[1]),
      .global_size_2(paddingLayer_global_size[2]),
      .num_groups_0(paddingLayer_num_groups[0]),
      .num_groups_1(paddingLayer_num_groups[1]),
      .num_groups_2(paddingLayer_num_groups[2]),
      .local_size_0(paddingLayer_local_size[0]),
      .local_size_1(paddingLayer_local_size[1]),
      .local_size_2(paddingLayer_local_size[2]),
      .workgroup_size(paddingLayer_wg_size),
      .kernel_arguments(paddingLayer_kernel_arguments),
      .cra_irq(kernel_irqs[3]),
      // AVS avs_cra
      .avs_cra_enable(avs_paddingLayer_cra_enable),
      .avs_cra_read(avs_paddingLayer_cra_read),
      .avs_cra_write(avs_paddingLayer_cra_write),
      .avs_cra_address(avs_paddingLayer_cra_address),
      .avs_cra_writedata(avs_paddingLayer_cra_writedata),
      .avs_cra_byteenable(avs_paddingLayer_cra_byteenable),
      .avs_cra_readdata(avs_paddingLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_paddingLayer_cra_readdatavalid)
   );

   // INST paddingLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   paddingLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(paddingLayer_wg_disp_start_out),
      .valid_in(paddingLayer_wg_disp_valid_out[0]),
      .stall_out(paddingLayer_wg_disp_stall_in[0]),
      .stall_in(paddingLayer_stall_out[0]),
      .valid_out(paddingLayer_valid_in[0]),
      .group_id_in(paddingLayer_wg_disp_group_id_out),
      .global_id_base_in(paddingLayer_wg_disp_global_id_base_out),
      .local_size(paddingLayer_local_size),
      .global_size(paddingLayer_global_size),
      .local_id(paddingLayer_local_id[0]),
      .global_id(paddingLayer_global_id[0]),
      .group_id(paddingLayer_group_id[0])
   );

   // INST paddingLayer_inst_0 of paddingLayer_top_wrapper_0
   paddingLayer_top_wrapper_0 paddingLayer_inst_0
   (
      .start(paddingLayer_start_kernel_copy[0]),
      .kernel_arguments(paddingLayer_kernel_arguments),
      .work_dim(paddingLayer_work_dim),
      .global_offset(paddingLayer_global_offset),
      .kernel_valid_out(paddingLayer_valid_out[0]),
      .has_a_write_pending(paddingLayer_pending_write[0]),
      .has_a_lsu_active(paddingLayer_lsu_active[0]),
      .global_id(paddingLayer_global_id[0]),
      .local_id(paddingLayer_local_id[0]),
      .group_id(paddingLayer_group_id[0]),
      .global_size(paddingLayer_global_size),
      .local_size(paddingLayer_local_size),
      .num_groups(paddingLayer_num_groups),
      .workgroup_size(paddingLayer_wg_size),
      .kernel_stall_out(paddingLayer_stall_out[0]),
      .kernel_valid_in(paddingLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_kernel_rd_enable[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_kernel_rd_read[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_kernel_rd_write[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_kernel_rd_burstcount[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_kernel_rd_address[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_kernel_rd_writedata[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_kernel_rd_byteenable[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_kernel_rd_waitrequest[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_kernel_rd_readdata[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_kernel_rd_readdatavalid[12]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_kernel_rd_writeack[12]),
      // AVM avm_local_bb1_ld__inst0
      .avm_local_bb1_ld__inst0_enable(avm_kernel_rd_enable[13]),
      .avm_local_bb1_ld__inst0_read(avm_kernel_rd_read[13]),
      .avm_local_bb1_ld__inst0_write(avm_kernel_rd_write[13]),
      .avm_local_bb1_ld__inst0_burstcount(avm_kernel_rd_burstcount[13]),
      .avm_local_bb1_ld__inst0_address(avm_kernel_rd_address[13]),
      .avm_local_bb1_ld__inst0_writedata(avm_kernel_rd_writedata[13]),
      .avm_local_bb1_ld__inst0_byteenable(avm_kernel_rd_byteenable[13]),
      .avm_local_bb1_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[13]),
      .avm_local_bb1_ld__inst0_readdata(avm_kernel_rd_readdata[13]),
      .avm_local_bb1_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[13]),
      .avm_local_bb1_ld__inst0_writeack(avm_kernel_rd_writeack[13]),
      // AVM avm_local_bb1_ld__u0_inst0
      .avm_local_bb1_ld__u0_inst0_enable(avm_kernel_rd_enable[14]),
      .avm_local_bb1_ld__u0_inst0_read(avm_kernel_rd_read[14]),
      .avm_local_bb1_ld__u0_inst0_write(avm_kernel_rd_write[14]),
      .avm_local_bb1_ld__u0_inst0_burstcount(avm_kernel_rd_burstcount[14]),
      .avm_local_bb1_ld__u0_inst0_address(avm_kernel_rd_address[14]),
      .avm_local_bb1_ld__u0_inst0_writedata(avm_kernel_rd_writedata[14]),
      .avm_local_bb1_ld__u0_inst0_byteenable(avm_kernel_rd_byteenable[14]),
      .avm_local_bb1_ld__u0_inst0_waitrequest(avm_kernel_rd_waitrequest[14]),
      .avm_local_bb1_ld__u0_inst0_readdata(avm_kernel_rd_readdata[14]),
      .avm_local_bb1_ld__u0_inst0_readdatavalid(avm_kernel_rd_readdatavalid[14]),
      .avm_local_bb1_ld__u0_inst0_writeack(avm_kernel_rd_writeack[14]),
      // AVM avm_local_bb4_ld__inst0
      .avm_local_bb4_ld__inst0_enable(avm_kernel_rd_enable[15]),
      .avm_local_bb4_ld__inst0_read(avm_kernel_rd_read[15]),
      .avm_local_bb4_ld__inst0_write(avm_kernel_rd_write[15]),
      .avm_local_bb4_ld__inst0_burstcount(avm_kernel_rd_burstcount[15]),
      .avm_local_bb4_ld__inst0_address(avm_kernel_rd_address[15]),
      .avm_local_bb4_ld__inst0_writedata(avm_kernel_rd_writedata[15]),
      .avm_local_bb4_ld__inst0_byteenable(avm_kernel_rd_byteenable[15]),
      .avm_local_bb4_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[15]),
      .avm_local_bb4_ld__inst0_readdata(avm_kernel_rd_readdata[15]),
      .avm_local_bb4_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[15]),
      .avm_local_bb4_ld__inst0_writeack(avm_kernel_rd_writeack[15]),
      // AVM avm_local_bb4_ld_memcoalesce_param_load_060_inst0
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_enable(avm_kernel_rd_enable[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_read(avm_kernel_rd_read[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_write(avm_kernel_rd_write[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_burstcount(avm_kernel_rd_burstcount[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_address(avm_kernel_rd_address[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writedata(avm_kernel_rd_writedata[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_byteenable(avm_kernel_rd_byteenable[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_waitrequest(avm_kernel_rd_waitrequest[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdata(avm_kernel_rd_readdata[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdatavalid(avm_kernel_rd_readdatavalid[16]),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writeack(avm_kernel_rd_writeack[16]),
      // AVM avm_local_bb4_st__27_inst0
      .avm_local_bb4_st__27_inst0_enable(avm_kernel_wr_enable[3]),
      .avm_local_bb4_st__27_inst0_read(avm_kernel_wr_read[3]),
      .avm_local_bb4_st__27_inst0_write(avm_kernel_wr_write[3]),
      .avm_local_bb4_st__27_inst0_burstcount(avm_kernel_wr_burstcount[3]),
      .avm_local_bb4_st__27_inst0_address(avm_kernel_wr_address[3]),
      .avm_local_bb4_st__27_inst0_writedata(avm_kernel_wr_writedata[3]),
      .avm_local_bb4_st__27_inst0_byteenable(avm_kernel_wr_byteenable[3]),
      .avm_local_bb4_st__27_inst0_waitrequest(avm_kernel_wr_waitrequest[3]),
      .avm_local_bb4_st__27_inst0_readdata(avm_kernel_wr_readdata[3]),
      .avm_local_bb4_st__27_inst0_readdatavalid(avm_kernel_wr_readdatavalid[3]),
      .avm_local_bb4_st__27_inst0_writeack(avm_kernel_wr_writeack[3])
   );

   // INST paddingLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element paddingLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(paddingLayer_start_chain[0]),
      .start_kernel(paddingLayer_start_kernel_copy[0]),
      .start_finish_detector(paddingLayer_start_task_fd[0]),
      .start_finish_chain_element(paddingLayer_start_finish_element[0]),
      .start_chain()
   );

   assign poolingLayer_start_chain[0] = poolingLayer_start;
   assign poolingLayer_finish_chain[0] = 1'b1;
   assign poolingLayer_cra_pending_write = |poolingLayer_pending_write;
   assign poolingLayer_cra_lsu_active = |poolingLayer_lsu_active;
   assign poolingLayer_cra_valid_in = |poolingLayer_valid_in;
   assign poolingLayer_stall_in = 0;
   // INST poolingLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   poolingLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(poolingLayer_start),
      .num_groups(poolingLayer_num_groups),
      .local_size(poolingLayer_local_size),
      .stall_in(poolingLayer_wg_disp_stall_in),
      .valid_out(poolingLayer_wg_disp_valid_out),
      .group_id_out(poolingLayer_wg_disp_group_id_out),
      .global_id_base_out(poolingLayer_wg_disp_global_id_base_out),
      .start_out(poolingLayer_wg_disp_start_out),
      .dispatched_all_groups(poolingLayer_wg_disp_dispatched_all_groups)
   );

   // INST poolingLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   poolingLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(poolingLayer_start),
      .wg_size(poolingLayer_wg_size),
      .wg_dispatch_valid_out(poolingLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(poolingLayer_wg_disp_stall_in),
      .dispatched_all_groups(poolingLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(poolingLayer_valid_out),
      .kernel_copy_stall_in(poolingLayer_stall_in),
      .pending_writes(poolingLayer_cra_pending_write),
      .finish(poolingLayer_finish)
   );

   // INST poolingLayer_cra_slave_inst of poolingLayer_function_cra_slave
   poolingLayer_function_cra_slave poolingLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(poolingLayer_start),
      .finish(poolingLayer_finish),
      .global_offset_0(poolingLayer_global_offset[0]),
      .global_offset_1(poolingLayer_global_offset[1]),
      .global_offset_2(poolingLayer_global_offset[2]),
      .work_dim(poolingLayer_work_dim),
      .has_a_lsu_active(poolingLayer_cra_lsu_active),
      .has_a_write_pending(poolingLayer_cra_pending_write),
      .valid_in(poolingLayer_cra_valid_in),
      .global_size_0(poolingLayer_global_size[0]),
      .global_size_1(poolingLayer_global_size[1]),
      .global_size_2(poolingLayer_global_size[2]),
      .num_groups_0(poolingLayer_num_groups[0]),
      .num_groups_1(poolingLayer_num_groups[1]),
      .num_groups_2(poolingLayer_num_groups[2]),
      .local_size_0(poolingLayer_local_size[0]),
      .local_size_1(poolingLayer_local_size[1]),
      .local_size_2(poolingLayer_local_size[2]),
      .workgroup_size(poolingLayer_wg_size),
      .kernel_arguments(poolingLayer_kernel_arguments),
      .cra_irq(kernel_irqs[4]),
      // AVS avs_cra
      .avs_cra_enable(avs_poolingLayer_cra_enable),
      .avs_cra_read(avs_poolingLayer_cra_read),
      .avs_cra_write(avs_poolingLayer_cra_write),
      .avs_cra_address(avs_poolingLayer_cra_address),
      .avs_cra_writedata(avs_poolingLayer_cra_writedata),
      .avs_cra_byteenable(avs_poolingLayer_cra_byteenable),
      .avs_cra_readdata(avs_poolingLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_poolingLayer_cra_readdatavalid)
   );

   // INST poolingLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   poolingLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(poolingLayer_wg_disp_start_out),
      .valid_in(poolingLayer_wg_disp_valid_out[0]),
      .stall_out(poolingLayer_wg_disp_stall_in[0]),
      .stall_in(poolingLayer_stall_out[0]),
      .valid_out(poolingLayer_valid_in[0]),
      .group_id_in(poolingLayer_wg_disp_group_id_out),
      .global_id_base_in(poolingLayer_wg_disp_global_id_base_out),
      .local_size(poolingLayer_local_size),
      .global_size(poolingLayer_global_size),
      .local_id(poolingLayer_local_id[0]),
      .global_id(poolingLayer_global_id[0]),
      .group_id(poolingLayer_group_id[0])
   );

   // INST poolingLayer_inst_0 of poolingLayer_top_wrapper_0
   poolingLayer_top_wrapper_0 poolingLayer_inst_0
   (
      .start(poolingLayer_start_kernel_copy[0]),
      .kernel_arguments(poolingLayer_kernel_arguments),
      .work_dim(poolingLayer_work_dim),
      .global_offset(poolingLayer_global_offset),
      .kernel_valid_out(poolingLayer_valid_out[0]),
      .has_a_write_pending(poolingLayer_pending_write[0]),
      .has_a_lsu_active(poolingLayer_lsu_active[0]),
      .global_id(poolingLayer_global_id[0]),
      .local_id(poolingLayer_local_id[0]),
      .group_id(poolingLayer_group_id[0]),
      .global_size(poolingLayer_global_size),
      .local_size(poolingLayer_local_size),
      .num_groups(poolingLayer_num_groups),
      .workgroup_size(poolingLayer_wg_size),
      .kernel_stall_out(poolingLayer_stall_out[0]),
      .kernel_valid_in(poolingLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_kernel_rd_enable[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_kernel_rd_read[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_kernel_rd_write[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_kernel_rd_burstcount[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_kernel_rd_address[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_kernel_rd_writedata[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_kernel_rd_byteenable[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_kernel_rd_waitrequest[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_kernel_rd_readdata[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_kernel_rd_readdatavalid[17]),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_kernel_rd_writeack[17]),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_093_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_enable(avm_kernel_rd_enable[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_read(avm_kernel_rd_read[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_write(avm_kernel_rd_write[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_burstcount(avm_kernel_rd_burstcount[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_address(avm_kernel_rd_address[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writedata(avm_kernel_rd_writedata[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_byteenable(avm_kernel_rd_byteenable[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_waitrequest(avm_kernel_rd_waitrequest[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdata(avm_kernel_rd_readdata[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdatavalid(avm_kernel_rd_readdatavalid[18]),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writeack(avm_kernel_rd_writeack[18]),
      // AVM avm_local_bb3_ld__inst0
      .avm_local_bb3_ld__inst0_enable(avm_kernel_rd_enable[19]),
      .avm_local_bb3_ld__inst0_read(avm_kernel_rd_read[19]),
      .avm_local_bb3_ld__inst0_write(avm_kernel_rd_write[19]),
      .avm_local_bb3_ld__inst0_burstcount(avm_kernel_rd_burstcount[19]),
      .avm_local_bb3_ld__inst0_address(avm_kernel_rd_address[19]),
      .avm_local_bb3_ld__inst0_writedata(avm_kernel_rd_writedata[19]),
      .avm_local_bb3_ld__inst0_byteenable(avm_kernel_rd_byteenable[19]),
      .avm_local_bb3_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[19]),
      .avm_local_bb3_ld__inst0_readdata(avm_kernel_rd_readdata[19]),
      .avm_local_bb3_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[19]),
      .avm_local_bb3_ld__inst0_writeack(avm_kernel_rd_writeack[19]),
      // AVM avm_local_bb5_ld__inst0
      .avm_local_bb5_ld__inst0_enable(avm_kernel_rd_enable[20]),
      .avm_local_bb5_ld__inst0_read(avm_kernel_rd_read[20]),
      .avm_local_bb5_ld__inst0_write(avm_kernel_rd_write[20]),
      .avm_local_bb5_ld__inst0_burstcount(avm_kernel_rd_burstcount[20]),
      .avm_local_bb5_ld__inst0_address(avm_kernel_rd_address[20]),
      .avm_local_bb5_ld__inst0_writedata(avm_kernel_rd_writedata[20]),
      .avm_local_bb5_ld__inst0_byteenable(avm_kernel_rd_byteenable[20]),
      .avm_local_bb5_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[20]),
      .avm_local_bb5_ld__inst0_readdata(avm_kernel_rd_readdata[20]),
      .avm_local_bb5_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[20]),
      .avm_local_bb5_ld__inst0_writeack(avm_kernel_rd_writeack[20]),
      // AVM avm_local_bb6_ld__inst0
      .avm_local_bb6_ld__inst0_enable(avm_kernel_rd_enable[21]),
      .avm_local_bb6_ld__inst0_read(avm_kernel_rd_read[21]),
      .avm_local_bb6_ld__inst0_write(avm_kernel_rd_write[21]),
      .avm_local_bb6_ld__inst0_burstcount(avm_kernel_rd_burstcount[21]),
      .avm_local_bb6_ld__inst0_address(avm_kernel_rd_address[21]),
      .avm_local_bb6_ld__inst0_writedata(avm_kernel_rd_writedata[21]),
      .avm_local_bb6_ld__inst0_byteenable(avm_kernel_rd_byteenable[21]),
      .avm_local_bb6_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[21]),
      .avm_local_bb6_ld__inst0_readdata(avm_kernel_rd_readdata[21]),
      .avm_local_bb6_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[21]),
      .avm_local_bb6_ld__inst0_writeack(avm_kernel_rd_writeack[21]),
      // AVM avm_local_bb6_st_select55_inst0
      .avm_local_bb6_st_select55_inst0_enable(avm_kernel_wr_enable[4]),
      .avm_local_bb6_st_select55_inst0_read(avm_kernel_wr_read[4]),
      .avm_local_bb6_st_select55_inst0_write(avm_kernel_wr_write[4]),
      .avm_local_bb6_st_select55_inst0_burstcount(avm_kernel_wr_burstcount[4]),
      .avm_local_bb6_st_select55_inst0_address(avm_kernel_wr_address[4]),
      .avm_local_bb6_st_select55_inst0_writedata(avm_kernel_wr_writedata[4]),
      .avm_local_bb6_st_select55_inst0_byteenable(avm_kernel_wr_byteenable[4]),
      .avm_local_bb6_st_select55_inst0_waitrequest(avm_kernel_wr_waitrequest[4]),
      .avm_local_bb6_st_select55_inst0_readdata(avm_kernel_wr_readdata[4]),
      .avm_local_bb6_st_select55_inst0_readdatavalid(avm_kernel_wr_readdatavalid[4]),
      .avm_local_bb6_st_select55_inst0_writeack(avm_kernel_wr_writeack[4])
   );

   // INST poolingLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element poolingLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(poolingLayer_start_chain[0]),
      .start_kernel(poolingLayer_start_kernel_copy[0]),
      .start_finish_detector(poolingLayer_start_task_fd[0]),
      .start_finish_chain_element(poolingLayer_start_finish_element[0]),
      .start_chain()
   );

   assign reluLayer_start_chain[0] = reluLayer_start;
   assign reluLayer_finish_chain[0] = 1'b1;
   assign reluLayer_cra_pending_write = |reluLayer_pending_write;
   assign reluLayer_cra_lsu_active = |reluLayer_lsu_active;
   assign reluLayer_cra_valid_in = |reluLayer_valid_in;
   assign reluLayer_stall_in = 0;
   // INST reluLayer_workgroup_dispatcher of acl_work_group_dispatcher
   acl_work_group_dispatcher
   #(
      .WIDTH(32),
      .NUM_COPIES(1),
      .RUN_FOREVER(0)
   )
   reluLayer_workgroup_dispatcher
   (
      .clock(clock),
      .resetn(resetn),
      .start(reluLayer_start),
      .num_groups(reluLayer_num_groups),
      .local_size(reluLayer_local_size),
      .stall_in(reluLayer_wg_disp_stall_in),
      .valid_out(reluLayer_wg_disp_valid_out),
      .group_id_out(reluLayer_wg_disp_group_id_out),
      .global_id_base_out(reluLayer_wg_disp_global_id_base_out),
      .start_out(reluLayer_wg_disp_start_out),
      .dispatched_all_groups(reluLayer_wg_disp_dispatched_all_groups)
   );

   // INST reluLayer_finish_detector of acl_kernel_finish_detector
   acl_kernel_finish_detector
   #(
      .NUM_COPIES(1),
      .WG_SIZE_W(32),
      .GLOBAL_ID_W(32),
      .TESSELLATION_SIZE(0)
   )
   reluLayer_finish_detector
   (
      .clock(clock),
      .resetn(resetn),
      .start(reluLayer_start),
      .wg_size(reluLayer_wg_size),
      .wg_dispatch_valid_out(reluLayer_wg_disp_valid_out),
      .wg_dispatch_stall_in(reluLayer_wg_disp_stall_in),
      .dispatched_all_groups(reluLayer_wg_disp_dispatched_all_groups),
      .kernel_copy_valid_out(reluLayer_valid_out),
      .kernel_copy_stall_in(reluLayer_stall_in),
      .pending_writes(reluLayer_cra_pending_write),
      .finish(reluLayer_finish)
   );

   // INST reluLayer_cra_slave_inst of reluLayer_function_cra_slave
   reluLayer_function_cra_slave reluLayer_cra_slave_inst
   (
      .clock(clock),
      .resetn(resetn),
      .start(reluLayer_start),
      .finish(reluLayer_finish),
      .global_offset_0(reluLayer_global_offset[0]),
      .global_offset_1(reluLayer_global_offset[1]),
      .global_offset_2(reluLayer_global_offset[2]),
      .work_dim(reluLayer_work_dim),
      .has_a_lsu_active(reluLayer_cra_lsu_active),
      .has_a_write_pending(reluLayer_cra_pending_write),
      .valid_in(reluLayer_cra_valid_in),
      .global_size_0(reluLayer_global_size[0]),
      .global_size_1(reluLayer_global_size[1]),
      .global_size_2(reluLayer_global_size[2]),
      .num_groups_0(reluLayer_num_groups[0]),
      .num_groups_1(reluLayer_num_groups[1]),
      .num_groups_2(reluLayer_num_groups[2]),
      .local_size_0(reluLayer_local_size[0]),
      .local_size_1(reluLayer_local_size[1]),
      .local_size_2(reluLayer_local_size[2]),
      .workgroup_size(reluLayer_wg_size),
      .kernel_arguments(reluLayer_kernel_arguments),
      .cra_irq(kernel_irqs[5]),
      // AVS avs_cra
      .avs_cra_enable(avs_reluLayer_cra_enable),
      .avs_cra_read(avs_reluLayer_cra_read),
      .avs_cra_write(avs_reluLayer_cra_write),
      .avs_cra_address(avs_reluLayer_cra_address),
      .avs_cra_writedata(avs_reluLayer_cra_writedata),
      .avs_cra_byteenable(avs_reluLayer_cra_byteenable),
      .avs_cra_readdata(avs_reluLayer_cra_readdata),
      .avs_cra_readdatavalid(avs_reluLayer_cra_readdatavalid)
   );

   // INST reluLayer_id_iter_inst_0 of acl_id_iterator
   acl_id_iterator
   #(
      .WIDTH(32),
      .LOCAL_WIDTH_X(31),
      .LOCAL_WIDTH_Y(31),
      .LOCAL_WIDTH_Z(31),
      .ENABLE_TESSELLATION(0)
   )
   reluLayer_id_iter_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start(reluLayer_wg_disp_start_out),
      .valid_in(reluLayer_wg_disp_valid_out[0]),
      .stall_out(reluLayer_wg_disp_stall_in[0]),
      .stall_in(reluLayer_stall_out[0]),
      .valid_out(reluLayer_valid_in[0]),
      .group_id_in(reluLayer_wg_disp_group_id_out),
      .global_id_base_in(reluLayer_wg_disp_global_id_base_out),
      .local_size(reluLayer_local_size),
      .global_size(reluLayer_global_size),
      .local_id(reluLayer_local_id[0]),
      .global_id(reluLayer_global_id[0]),
      .group_id(reluLayer_group_id[0])
   );

   // INST reluLayer_inst_0 of reluLayer_top_wrapper_0
   reluLayer_top_wrapper_0 reluLayer_inst_0
   (
      .start(reluLayer_start_kernel_copy[0]),
      .kernel_arguments(reluLayer_kernel_arguments),
      .work_dim(reluLayer_work_dim),
      .global_offset(reluLayer_global_offset),
      .kernel_valid_out(reluLayer_valid_out[0]),
      .has_a_write_pending(reluLayer_pending_write[0]),
      .has_a_lsu_active(reluLayer_lsu_active[0]),
      .global_id(reluLayer_global_id[0]),
      .local_id(reluLayer_local_id[0]),
      .group_id(reluLayer_group_id[0]),
      .global_size(reluLayer_global_size),
      .local_size(reluLayer_local_size),
      .num_groups(reluLayer_num_groups),
      .workgroup_size(reluLayer_wg_size),
      .kernel_stall_out(reluLayer_stall_out[0]),
      .kernel_valid_in(reluLayer_valid_in[0]),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_kernel_rd_enable[22]),
      .avm_local_bb0_ld__inst0_read(avm_kernel_rd_read[22]),
      .avm_local_bb0_ld__inst0_write(avm_kernel_rd_write[22]),
      .avm_local_bb0_ld__inst0_burstcount(avm_kernel_rd_burstcount[22]),
      .avm_local_bb0_ld__inst0_address(avm_kernel_rd_address[22]),
      .avm_local_bb0_ld__inst0_writedata(avm_kernel_rd_writedata[22]),
      .avm_local_bb0_ld__inst0_byteenable(avm_kernel_rd_byteenable[22]),
      .avm_local_bb0_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[22]),
      .avm_local_bb0_ld__inst0_readdata(avm_kernel_rd_readdata[22]),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[22]),
      .avm_local_bb0_ld__inst0_writeack(avm_kernel_rd_writeack[22]),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_kernel_rd_enable[23]),
      .avm_local_bb2_ld__inst0_read(avm_kernel_rd_read[23]),
      .avm_local_bb2_ld__inst0_write(avm_kernel_rd_write[23]),
      .avm_local_bb2_ld__inst0_burstcount(avm_kernel_rd_burstcount[23]),
      .avm_local_bb2_ld__inst0_address(avm_kernel_rd_address[23]),
      .avm_local_bb2_ld__inst0_writedata(avm_kernel_rd_writedata[23]),
      .avm_local_bb2_ld__inst0_byteenable(avm_kernel_rd_byteenable[23]),
      .avm_local_bb2_ld__inst0_waitrequest(avm_kernel_rd_waitrequest[23]),
      .avm_local_bb2_ld__inst0_readdata(avm_kernel_rd_readdata[23]),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_kernel_rd_readdatavalid[23]),
      .avm_local_bb2_ld__inst0_writeack(avm_kernel_rd_writeack[23]),
      // AVM avm_local_bb2_st_cond_inst0
      .avm_local_bb2_st_cond_inst0_enable(avm_kernel_wr_enable[5]),
      .avm_local_bb2_st_cond_inst0_read(avm_kernel_wr_read[5]),
      .avm_local_bb2_st_cond_inst0_write(avm_kernel_wr_write[5]),
      .avm_local_bb2_st_cond_inst0_burstcount(avm_kernel_wr_burstcount[5]),
      .avm_local_bb2_st_cond_inst0_address(avm_kernel_wr_address[5]),
      .avm_local_bb2_st_cond_inst0_writedata(avm_kernel_wr_writedata[5]),
      .avm_local_bb2_st_cond_inst0_byteenable(avm_kernel_wr_byteenable[5]),
      .avm_local_bb2_st_cond_inst0_waitrequest(avm_kernel_wr_waitrequest[5]),
      .avm_local_bb2_st_cond_inst0_readdata(avm_kernel_wr_readdata[5]),
      .avm_local_bb2_st_cond_inst0_readdatavalid(avm_kernel_wr_readdatavalid[5]),
      .avm_local_bb2_st_cond_inst0_writeack(avm_kernel_wr_writeack[5])
   );

   // INST reluLayer_start_elem_inst_0 of acl_start_signal_chain_element
   acl_start_signal_chain_element reluLayer_start_elem_inst_0
   (
      .clock(clock),
      .resetn(resetn),
      .start_in(reluLayer_start_chain[0]),
      .start_kernel(reluLayer_start_kernel_copy[0]),
      .start_finish_detector(reluLayer_start_task_fd[0]),
      .start_finish_chain_element(reluLayer_start_finish_element[0]),
      .start_chain()
   );

   assign kernel_irq = |kernel_irqs;
   // INST lsu_ic_top of lsu_ic_top
   lsu_ic_top
   #(
      .AWIDTH(32),
      .SHIFT(10),
      .MWIDTH_BYTES(64),
      .BURST_CNT_W(5),
      .NUM_RD_PORT(24),
      .NUM_WR_PORT(6),
      .NUM_DIMM(2),
      .ENABLE_DUAL_RING(0),
      .ENABLE_MULTIPLE_WR_RING(0),
      .ENABLE_LAST_WAIT(0),
      .ENABLE_REORDER(1),
      .NUM_REORDER(1)
   )
   lsu_ic_top
   (
      .clk(clock),
      .resetn(resetn),
      .i_rd_request(avm_kernel_rd_read),
      .i_rd_address(avm_kernel_rd_address),
      .i_rd_burstcount(avm_kernel_rd_burstcount),
      .i_wr_byteenable(avm_kernel_wr_byteenable),
      .i_wr_address(avm_kernel_wr_address),
      .i_wr_request(avm_kernel_wr_write),
      .i_wr_burstcount(avm_kernel_wr_burstcount),
      .i_wr_writedata(avm_kernel_wr_writedata),
      .i_avm_waitrequest(ic_avm_waitrequest),
      .i_avm_readdata(ic_avm_readdata),
      .i_avm_readdatavalid(ic_avm_readdatavalid),
      .o_avm_byteenable(ic_avm_byteenable),
      .o_avm_address(ic_avm_address),
      .o_avm_read(ic_avm_read),
      .o_avm_write(ic_avm_write),
      .o_avm_burstcount(ic_avm_burstcount),
      .o_wr_waitrequest(avm_kernel_wr_waitrequest),
      .o_avm_writedata(ic_avm_writedata),
      .o_avm_writeack(avm_kernel_wr_writeack),
      .o_rd_waitrequest(avm_kernel_rd_waitrequest),
      .o_avm_readdata(avm_kernel_rd_readdata),
      .o_avm_readdatavalid(avm_kernel_rd_readdatavalid)
   );

   assign avm_memgmem0_port_0_0_rw_read = ic_avm_read[0];
   assign avm_memgmem0_port_0_0_rw_write = ic_avm_write[0];
   assign avm_memgmem0_port_0_0_rw_burstcount = ic_avm_burstcount[0];
   assign avm_memgmem0_port_0_0_rw_address = ic_avm_address[0];
   assign avm_memgmem0_port_0_0_rw_writedata = ic_avm_writedata[0];
   assign avm_memgmem0_port_0_0_rw_byteenable = ic_avm_byteenable[0];
   assign ic_avm_waitrequest[0] = avm_memgmem0_port_0_0_rw_waitrequest;
   assign ic_avm_readdata[0] = avm_memgmem0_port_0_0_rw_readdata;
   assign ic_avm_readdatavalid[0] = avm_memgmem0_port_0_0_rw_readdatavalid;
   assign avm_memgmem0_port_1_0_rw_read = ic_avm_read[1];
   assign avm_memgmem0_port_1_0_rw_write = ic_avm_write[1];
   assign avm_memgmem0_port_1_0_rw_burstcount = ic_avm_burstcount[1];
   assign avm_memgmem0_port_1_0_rw_address = ic_avm_address[1];
   assign avm_memgmem0_port_1_0_rw_writedata = ic_avm_writedata[1];
   assign avm_memgmem0_port_1_0_rw_byteenable = ic_avm_byteenable[1];
   assign ic_avm_waitrequest[1] = avm_memgmem0_port_1_0_rw_waitrequest;
   assign ic_avm_readdata[1] = avm_memgmem0_port_1_0_rw_readdata;
   assign ic_avm_readdatavalid[1] = avm_memgmem0_port_1_0_rw_readdatavalid;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE convLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module convLayer_top_wrapper_0
(
   input logic start,
   input logic [383:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write,
   output logic [4:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address,
   output logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata,
   output logic [63:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack,
   // AVM avm_local_bb1_ld__inst0
   output logic avm_local_bb1_ld__inst0_enable,
   output logic avm_local_bb1_ld__inst0_read,
   output logic avm_local_bb1_ld__inst0_write,
   output logic [4:0] avm_local_bb1_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld__inst0_address,
   output logic [511:0] avm_local_bb1_ld__inst0_writedata,
   output logic [63:0] avm_local_bb1_ld__inst0_byteenable,
   input logic avm_local_bb1_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld__inst0_readdata,
   input logic avm_local_bb1_ld__inst0_readdatavalid,
   input logic avm_local_bb1_ld__inst0_writeack,
   // AVM avm_local_bb1_ld_memcoalesce_param_load_0143_inst0
   output logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_enable,
   output logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_read,
   output logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_write,
   output logic [4:0] avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_address,
   output logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writedata,
   output logic [63:0] avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_byteenable,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdata,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdatavalid,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writeack,
   // AVM avm_local_bb1_ld_memcoalesce_param_load_0147_inst0
   output logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_enable,
   output logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_read,
   output logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_write,
   output logic [4:0] avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_address,
   output logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writedata,
   output logic [63:0] avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_byteenable,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdata,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdatavalid,
   input logic avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writeack,
   // AVM avm_local_bb5_ld__inst0
   output logic avm_local_bb5_ld__inst0_enable,
   output logic avm_local_bb5_ld__inst0_read,
   output logic avm_local_bb5_ld__inst0_write,
   output logic [4:0] avm_local_bb5_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb5_ld__inst0_address,
   output logic [511:0] avm_local_bb5_ld__inst0_writedata,
   output logic [63:0] avm_local_bb5_ld__inst0_byteenable,
   input logic avm_local_bb5_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb5_ld__inst0_readdata,
   input logic avm_local_bb5_ld__inst0_readdatavalid,
   input logic avm_local_bb5_ld__inst0_writeack,
   // AVM avm_local_bb5_ld__u8_inst0
   output logic avm_local_bb5_ld__u8_inst0_enable,
   output logic avm_local_bb5_ld__u8_inst0_read,
   output logic avm_local_bb5_ld__u8_inst0_write,
   output logic [4:0] avm_local_bb5_ld__u8_inst0_burstcount,
   output logic [31:0] avm_local_bb5_ld__u8_inst0_address,
   output logic [511:0] avm_local_bb5_ld__u8_inst0_writedata,
   output logic [63:0] avm_local_bb5_ld__u8_inst0_byteenable,
   input logic avm_local_bb5_ld__u8_inst0_waitrequest,
   input logic [511:0] avm_local_bb5_ld__u8_inst0_readdata,
   input logic avm_local_bb5_ld__u8_inst0_readdatavalid,
   input logic avm_local_bb5_ld__u8_inst0_writeack,
   // AVM avm_local_bb6_ld__inst0
   output logic avm_local_bb6_ld__inst0_enable,
   output logic avm_local_bb6_ld__inst0_read,
   output logic avm_local_bb6_ld__inst0_write,
   output logic [4:0] avm_local_bb6_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb6_ld__inst0_address,
   output logic [511:0] avm_local_bb6_ld__inst0_writedata,
   output logic [63:0] avm_local_bb6_ld__inst0_byteenable,
   input logic avm_local_bb6_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb6_ld__inst0_readdata,
   input logic avm_local_bb6_ld__inst0_readdatavalid,
   input logic avm_local_bb6_ld__inst0_writeack,
   // AVM avm_local_bb6_st_c0_exe120_inst0
   output logic avm_local_bb6_st_c0_exe120_inst0_enable,
   output logic avm_local_bb6_st_c0_exe120_inst0_read,
   output logic avm_local_bb6_st_c0_exe120_inst0_write,
   output logic [4:0] avm_local_bb6_st_c0_exe120_inst0_burstcount,
   output logic [31:0] avm_local_bb6_st_c0_exe120_inst0_address,
   output logic [511:0] avm_local_bb6_st_c0_exe120_inst0_writedata,
   output logic [63:0] avm_local_bb6_st_c0_exe120_inst0_byteenable,
   input logic avm_local_bb6_st_c0_exe120_inst0_waitrequest,
   input logic [511:0] avm_local_bb6_st_c0_exe120_inst0_readdata,
   input logic avm_local_bb6_st_c0_exe120_inst0_readdatavalid,
   input logic avm_local_bb6_st_c0_exe120_inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of convLayer_function_wrapper
   convLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack),
      // AVM avm_local_bb1_ld__inst0
      .avm_local_bb1_ld__inst0_enable(avm_local_bb1_ld__inst0_enable),
      .avm_local_bb1_ld__inst0_read(avm_local_bb1_ld__inst0_read),
      .avm_local_bb1_ld__inst0_write(avm_local_bb1_ld__inst0_write),
      .avm_local_bb1_ld__inst0_burstcount(avm_local_bb1_ld__inst0_burstcount),
      .avm_local_bb1_ld__inst0_address(avm_local_bb1_ld__inst0_address),
      .avm_local_bb1_ld__inst0_writedata(avm_local_bb1_ld__inst0_writedata),
      .avm_local_bb1_ld__inst0_byteenable(avm_local_bb1_ld__inst0_byteenable),
      .avm_local_bb1_ld__inst0_waitrequest(avm_local_bb1_ld__inst0_waitrequest),
      .avm_local_bb1_ld__inst0_readdata(avm_local_bb1_ld__inst0_readdata),
      .avm_local_bb1_ld__inst0_readdatavalid(avm_local_bb1_ld__inst0_readdatavalid),
      .avm_local_bb1_ld__inst0_writeack(avm_local_bb1_ld__inst0_writeack),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_0143_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_enable(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_enable),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_read(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_read),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_write(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_write),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_burstcount(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_burstcount),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_address(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_address),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writedata(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writedata),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_byteenable(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_byteenable),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_waitrequest(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_waitrequest),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdata(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdata),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdatavalid(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_readdatavalid),
      .avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writeack(avm_local_bb1_ld_memcoalesce_param_load_0143_inst0_writeack),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_0147_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_enable(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_enable),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_read(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_read),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_write(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_write),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_burstcount(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_burstcount),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_address(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_address),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writedata(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writedata),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_byteenable(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_byteenable),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_waitrequest(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_waitrequest),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdata(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdata),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdatavalid(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_readdatavalid),
      .avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writeack(avm_local_bb1_ld_memcoalesce_param_load_0147_inst0_writeack),
      // AVM avm_local_bb5_ld__inst0
      .avm_local_bb5_ld__inst0_enable(avm_local_bb5_ld__inst0_enable),
      .avm_local_bb5_ld__inst0_read(avm_local_bb5_ld__inst0_read),
      .avm_local_bb5_ld__inst0_write(avm_local_bb5_ld__inst0_write),
      .avm_local_bb5_ld__inst0_burstcount(avm_local_bb5_ld__inst0_burstcount),
      .avm_local_bb5_ld__inst0_address(avm_local_bb5_ld__inst0_address),
      .avm_local_bb5_ld__inst0_writedata(avm_local_bb5_ld__inst0_writedata),
      .avm_local_bb5_ld__inst0_byteenable(avm_local_bb5_ld__inst0_byteenable),
      .avm_local_bb5_ld__inst0_waitrequest(avm_local_bb5_ld__inst0_waitrequest),
      .avm_local_bb5_ld__inst0_readdata(avm_local_bb5_ld__inst0_readdata),
      .avm_local_bb5_ld__inst0_readdatavalid(avm_local_bb5_ld__inst0_readdatavalid),
      .avm_local_bb5_ld__inst0_writeack(avm_local_bb5_ld__inst0_writeack),
      // AVM avm_local_bb5_ld__u8_inst0
      .avm_local_bb5_ld__u8_inst0_enable(avm_local_bb5_ld__u8_inst0_enable),
      .avm_local_bb5_ld__u8_inst0_read(avm_local_bb5_ld__u8_inst0_read),
      .avm_local_bb5_ld__u8_inst0_write(avm_local_bb5_ld__u8_inst0_write),
      .avm_local_bb5_ld__u8_inst0_burstcount(avm_local_bb5_ld__u8_inst0_burstcount),
      .avm_local_bb5_ld__u8_inst0_address(avm_local_bb5_ld__u8_inst0_address),
      .avm_local_bb5_ld__u8_inst0_writedata(avm_local_bb5_ld__u8_inst0_writedata),
      .avm_local_bb5_ld__u8_inst0_byteenable(avm_local_bb5_ld__u8_inst0_byteenable),
      .avm_local_bb5_ld__u8_inst0_waitrequest(avm_local_bb5_ld__u8_inst0_waitrequest),
      .avm_local_bb5_ld__u8_inst0_readdata(avm_local_bb5_ld__u8_inst0_readdata),
      .avm_local_bb5_ld__u8_inst0_readdatavalid(avm_local_bb5_ld__u8_inst0_readdatavalid),
      .avm_local_bb5_ld__u8_inst0_writeack(avm_local_bb5_ld__u8_inst0_writeack),
      // AVM avm_local_bb6_ld__inst0
      .avm_local_bb6_ld__inst0_enable(avm_local_bb6_ld__inst0_enable),
      .avm_local_bb6_ld__inst0_read(avm_local_bb6_ld__inst0_read),
      .avm_local_bb6_ld__inst0_write(avm_local_bb6_ld__inst0_write),
      .avm_local_bb6_ld__inst0_burstcount(avm_local_bb6_ld__inst0_burstcount),
      .avm_local_bb6_ld__inst0_address(avm_local_bb6_ld__inst0_address),
      .avm_local_bb6_ld__inst0_writedata(avm_local_bb6_ld__inst0_writedata),
      .avm_local_bb6_ld__inst0_byteenable(avm_local_bb6_ld__inst0_byteenable),
      .avm_local_bb6_ld__inst0_waitrequest(avm_local_bb6_ld__inst0_waitrequest),
      .avm_local_bb6_ld__inst0_readdata(avm_local_bb6_ld__inst0_readdata),
      .avm_local_bb6_ld__inst0_readdatavalid(avm_local_bb6_ld__inst0_readdatavalid),
      .avm_local_bb6_ld__inst0_writeack(avm_local_bb6_ld__inst0_writeack),
      // AVM avm_local_bb6_st_c0_exe120_inst0
      .avm_local_bb6_st_c0_exe120_inst0_enable(avm_local_bb6_st_c0_exe120_inst0_enable),
      .avm_local_bb6_st_c0_exe120_inst0_read(avm_local_bb6_st_c0_exe120_inst0_read),
      .avm_local_bb6_st_c0_exe120_inst0_write(avm_local_bb6_st_c0_exe120_inst0_write),
      .avm_local_bb6_st_c0_exe120_inst0_burstcount(avm_local_bb6_st_c0_exe120_inst0_burstcount),
      .avm_local_bb6_st_c0_exe120_inst0_address(avm_local_bb6_st_c0_exe120_inst0_address),
      .avm_local_bb6_st_c0_exe120_inst0_writedata(avm_local_bb6_st_c0_exe120_inst0_writedata),
      .avm_local_bb6_st_c0_exe120_inst0_byteenable(avm_local_bb6_st_c0_exe120_inst0_byteenable),
      .avm_local_bb6_st_c0_exe120_inst0_waitrequest(avm_local_bb6_st_c0_exe120_inst0_waitrequest),
      .avm_local_bb6_st_c0_exe120_inst0_readdata(avm_local_bb6_st_c0_exe120_inst0_readdata),
      .avm_local_bb6_st_c0_exe120_inst0_readdatavalid(avm_local_bb6_st_c0_exe120_inst0_readdatavalid),
      .avm_local_bb6_st_c0_exe120_inst0_writeack(avm_local_bb6_st_c0_exe120_inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE dataLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module dataLayer_top_wrapper_0
(
   input logic start,
   input logic [255:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld__inst0
   output logic avm_local_bb0_ld__inst0_enable,
   output logic avm_local_bb0_ld__inst0_read,
   output logic avm_local_bb0_ld__inst0_write,
   output logic [4:0] avm_local_bb0_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld__inst0_address,
   output logic [511:0] avm_local_bb0_ld__inst0_writedata,
   output logic [63:0] avm_local_bb0_ld__inst0_byteenable,
   input logic avm_local_bb0_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld__inst0_readdata,
   input logic avm_local_bb0_ld__inst0_readdatavalid,
   input logic avm_local_bb0_ld__inst0_writeack,
   // AVM avm_local_bb2_ld__inst0
   output logic avm_local_bb2_ld__inst0_enable,
   output logic avm_local_bb2_ld__inst0_read,
   output logic avm_local_bb2_ld__inst0_write,
   output logic [4:0] avm_local_bb2_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb2_ld__inst0_address,
   output logic [511:0] avm_local_bb2_ld__inst0_writedata,
   output logic [63:0] avm_local_bb2_ld__inst0_byteenable,
   input logic avm_local_bb2_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb2_ld__inst0_readdata,
   input logic avm_local_bb2_ld__inst0_readdatavalid,
   input logic avm_local_bb2_ld__inst0_writeack,
   // AVM avm_local_bb2_ld__u3_inst0
   output logic avm_local_bb2_ld__u3_inst0_enable,
   output logic avm_local_bb2_ld__u3_inst0_read,
   output logic avm_local_bb2_ld__u3_inst0_write,
   output logic [4:0] avm_local_bb2_ld__u3_inst0_burstcount,
   output logic [31:0] avm_local_bb2_ld__u3_inst0_address,
   output logic [511:0] avm_local_bb2_ld__u3_inst0_writedata,
   output logic [63:0] avm_local_bb2_ld__u3_inst0_byteenable,
   input logic avm_local_bb2_ld__u3_inst0_waitrequest,
   input logic [511:0] avm_local_bb2_ld__u3_inst0_readdata,
   input logic avm_local_bb2_ld__u3_inst0_readdatavalid,
   input logic avm_local_bb2_ld__u3_inst0_writeack,
   // AVM avm_local_bb2_st__inst0
   output logic avm_local_bb2_st__inst0_enable,
   output logic avm_local_bb2_st__inst0_read,
   output logic avm_local_bb2_st__inst0_write,
   output logic [4:0] avm_local_bb2_st__inst0_burstcount,
   output logic [31:0] avm_local_bb2_st__inst0_address,
   output logic [511:0] avm_local_bb2_st__inst0_writedata,
   output logic [63:0] avm_local_bb2_st__inst0_byteenable,
   input logic avm_local_bb2_st__inst0_waitrequest,
   input logic [511:0] avm_local_bb2_st__inst0_readdata,
   input logic avm_local_bb2_st__inst0_readdatavalid,
   input logic avm_local_bb2_st__inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of dataLayer_function_wrapper
   dataLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_local_bb0_ld__inst0_enable),
      .avm_local_bb0_ld__inst0_read(avm_local_bb0_ld__inst0_read),
      .avm_local_bb0_ld__inst0_write(avm_local_bb0_ld__inst0_write),
      .avm_local_bb0_ld__inst0_burstcount(avm_local_bb0_ld__inst0_burstcount),
      .avm_local_bb0_ld__inst0_address(avm_local_bb0_ld__inst0_address),
      .avm_local_bb0_ld__inst0_writedata(avm_local_bb0_ld__inst0_writedata),
      .avm_local_bb0_ld__inst0_byteenable(avm_local_bb0_ld__inst0_byteenable),
      .avm_local_bb0_ld__inst0_waitrequest(avm_local_bb0_ld__inst0_waitrequest),
      .avm_local_bb0_ld__inst0_readdata(avm_local_bb0_ld__inst0_readdata),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_local_bb0_ld__inst0_readdatavalid),
      .avm_local_bb0_ld__inst0_writeack(avm_local_bb0_ld__inst0_writeack),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_local_bb2_ld__inst0_enable),
      .avm_local_bb2_ld__inst0_read(avm_local_bb2_ld__inst0_read),
      .avm_local_bb2_ld__inst0_write(avm_local_bb2_ld__inst0_write),
      .avm_local_bb2_ld__inst0_burstcount(avm_local_bb2_ld__inst0_burstcount),
      .avm_local_bb2_ld__inst0_address(avm_local_bb2_ld__inst0_address),
      .avm_local_bb2_ld__inst0_writedata(avm_local_bb2_ld__inst0_writedata),
      .avm_local_bb2_ld__inst0_byteenable(avm_local_bb2_ld__inst0_byteenable),
      .avm_local_bb2_ld__inst0_waitrequest(avm_local_bb2_ld__inst0_waitrequest),
      .avm_local_bb2_ld__inst0_readdata(avm_local_bb2_ld__inst0_readdata),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_local_bb2_ld__inst0_readdatavalid),
      .avm_local_bb2_ld__inst0_writeack(avm_local_bb2_ld__inst0_writeack),
      // AVM avm_local_bb2_ld__u3_inst0
      .avm_local_bb2_ld__u3_inst0_enable(avm_local_bb2_ld__u3_inst0_enable),
      .avm_local_bb2_ld__u3_inst0_read(avm_local_bb2_ld__u3_inst0_read),
      .avm_local_bb2_ld__u3_inst0_write(avm_local_bb2_ld__u3_inst0_write),
      .avm_local_bb2_ld__u3_inst0_burstcount(avm_local_bb2_ld__u3_inst0_burstcount),
      .avm_local_bb2_ld__u3_inst0_address(avm_local_bb2_ld__u3_inst0_address),
      .avm_local_bb2_ld__u3_inst0_writedata(avm_local_bb2_ld__u3_inst0_writedata),
      .avm_local_bb2_ld__u3_inst0_byteenable(avm_local_bb2_ld__u3_inst0_byteenable),
      .avm_local_bb2_ld__u3_inst0_waitrequest(avm_local_bb2_ld__u3_inst0_waitrequest),
      .avm_local_bb2_ld__u3_inst0_readdata(avm_local_bb2_ld__u3_inst0_readdata),
      .avm_local_bb2_ld__u3_inst0_readdatavalid(avm_local_bb2_ld__u3_inst0_readdatavalid),
      .avm_local_bb2_ld__u3_inst0_writeack(avm_local_bb2_ld__u3_inst0_writeack),
      // AVM avm_local_bb2_st__inst0
      .avm_local_bb2_st__inst0_enable(avm_local_bb2_st__inst0_enable),
      .avm_local_bb2_st__inst0_read(avm_local_bb2_st__inst0_read),
      .avm_local_bb2_st__inst0_write(avm_local_bb2_st__inst0_write),
      .avm_local_bb2_st__inst0_burstcount(avm_local_bb2_st__inst0_burstcount),
      .avm_local_bb2_st__inst0_address(avm_local_bb2_st__inst0_address),
      .avm_local_bb2_st__inst0_writedata(avm_local_bb2_st__inst0_writedata),
      .avm_local_bb2_st__inst0_byteenable(avm_local_bb2_st__inst0_byteenable),
      .avm_local_bb2_st__inst0_waitrequest(avm_local_bb2_st__inst0_waitrequest),
      .avm_local_bb2_st__inst0_readdata(avm_local_bb2_st__inst0_readdata),
      .avm_local_bb2_st__inst0_readdatavalid(avm_local_bb2_st__inst0_readdatavalid),
      .avm_local_bb2_st__inst0_writeack(avm_local_bb2_st__inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE outputLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module outputLayer_top_wrapper_0
(
   input logic start,
   input logic [255:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld__inst0
   output logic avm_local_bb0_ld__inst0_enable,
   output logic avm_local_bb0_ld__inst0_read,
   output logic avm_local_bb0_ld__inst0_write,
   output logic [4:0] avm_local_bb0_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld__inst0_address,
   output logic [511:0] avm_local_bb0_ld__inst0_writedata,
   output logic [63:0] avm_local_bb0_ld__inst0_byteenable,
   input logic avm_local_bb0_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld__inst0_readdata,
   input logic avm_local_bb0_ld__inst0_readdatavalid,
   input logic avm_local_bb0_ld__inst0_writeack,
   // AVM avm_local_bb2_ld__inst0
   output logic avm_local_bb2_ld__inst0_enable,
   output logic avm_local_bb2_ld__inst0_read,
   output logic avm_local_bb2_ld__inst0_write,
   output logic [4:0] avm_local_bb2_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb2_ld__inst0_address,
   output logic [511:0] avm_local_bb2_ld__inst0_writedata,
   output logic [63:0] avm_local_bb2_ld__inst0_byteenable,
   input logic avm_local_bb2_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb2_ld__inst0_readdata,
   input logic avm_local_bb2_ld__inst0_readdatavalid,
   input logic avm_local_bb2_ld__inst0_writeack,
   // AVM avm_local_bb2_st__inst0
   output logic avm_local_bb2_st__inst0_enable,
   output logic avm_local_bb2_st__inst0_read,
   output logic avm_local_bb2_st__inst0_write,
   output logic [4:0] avm_local_bb2_st__inst0_burstcount,
   output logic [31:0] avm_local_bb2_st__inst0_address,
   output logic [511:0] avm_local_bb2_st__inst0_writedata,
   output logic [63:0] avm_local_bb2_st__inst0_byteenable,
   input logic avm_local_bb2_st__inst0_waitrequest,
   input logic [511:0] avm_local_bb2_st__inst0_readdata,
   input logic avm_local_bb2_st__inst0_readdatavalid,
   input logic avm_local_bb2_st__inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of outputLayer_function_wrapper
   outputLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_local_bb0_ld__inst0_enable),
      .avm_local_bb0_ld__inst0_read(avm_local_bb0_ld__inst0_read),
      .avm_local_bb0_ld__inst0_write(avm_local_bb0_ld__inst0_write),
      .avm_local_bb0_ld__inst0_burstcount(avm_local_bb0_ld__inst0_burstcount),
      .avm_local_bb0_ld__inst0_address(avm_local_bb0_ld__inst0_address),
      .avm_local_bb0_ld__inst0_writedata(avm_local_bb0_ld__inst0_writedata),
      .avm_local_bb0_ld__inst0_byteenable(avm_local_bb0_ld__inst0_byteenable),
      .avm_local_bb0_ld__inst0_waitrequest(avm_local_bb0_ld__inst0_waitrequest),
      .avm_local_bb0_ld__inst0_readdata(avm_local_bb0_ld__inst0_readdata),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_local_bb0_ld__inst0_readdatavalid),
      .avm_local_bb0_ld__inst0_writeack(avm_local_bb0_ld__inst0_writeack),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_local_bb2_ld__inst0_enable),
      .avm_local_bb2_ld__inst0_read(avm_local_bb2_ld__inst0_read),
      .avm_local_bb2_ld__inst0_write(avm_local_bb2_ld__inst0_write),
      .avm_local_bb2_ld__inst0_burstcount(avm_local_bb2_ld__inst0_burstcount),
      .avm_local_bb2_ld__inst0_address(avm_local_bb2_ld__inst0_address),
      .avm_local_bb2_ld__inst0_writedata(avm_local_bb2_ld__inst0_writedata),
      .avm_local_bb2_ld__inst0_byteenable(avm_local_bb2_ld__inst0_byteenable),
      .avm_local_bb2_ld__inst0_waitrequest(avm_local_bb2_ld__inst0_waitrequest),
      .avm_local_bb2_ld__inst0_readdata(avm_local_bb2_ld__inst0_readdata),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_local_bb2_ld__inst0_readdatavalid),
      .avm_local_bb2_ld__inst0_writeack(avm_local_bb2_ld__inst0_writeack),
      // AVM avm_local_bb2_st__inst0
      .avm_local_bb2_st__inst0_enable(avm_local_bb2_st__inst0_enable),
      .avm_local_bb2_st__inst0_read(avm_local_bb2_st__inst0_read),
      .avm_local_bb2_st__inst0_write(avm_local_bb2_st__inst0_write),
      .avm_local_bb2_st__inst0_burstcount(avm_local_bb2_st__inst0_burstcount),
      .avm_local_bb2_st__inst0_address(avm_local_bb2_st__inst0_address),
      .avm_local_bb2_st__inst0_writedata(avm_local_bb2_st__inst0_writedata),
      .avm_local_bb2_st__inst0_byteenable(avm_local_bb2_st__inst0_byteenable),
      .avm_local_bb2_st__inst0_waitrequest(avm_local_bb2_st__inst0_waitrequest),
      .avm_local_bb2_st__inst0_readdata(avm_local_bb2_st__inst0_readdata),
      .avm_local_bb2_st__inst0_readdatavalid(avm_local_bb2_st__inst0_readdatavalid),
      .avm_local_bb2_st__inst0_writeack(avm_local_bb2_st__inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE paddingLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module paddingLayer_top_wrapper_0
(
   input logic start,
   input logic [255:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write,
   output logic [4:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address,
   output logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata,
   output logic [63:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack,
   // AVM avm_local_bb1_ld__inst0
   output logic avm_local_bb1_ld__inst0_enable,
   output logic avm_local_bb1_ld__inst0_read,
   output logic avm_local_bb1_ld__inst0_write,
   output logic [4:0] avm_local_bb1_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld__inst0_address,
   output logic [511:0] avm_local_bb1_ld__inst0_writedata,
   output logic [63:0] avm_local_bb1_ld__inst0_byteenable,
   input logic avm_local_bb1_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld__inst0_readdata,
   input logic avm_local_bb1_ld__inst0_readdatavalid,
   input logic avm_local_bb1_ld__inst0_writeack,
   // AVM avm_local_bb1_ld__u0_inst0
   output logic avm_local_bb1_ld__u0_inst0_enable,
   output logic avm_local_bb1_ld__u0_inst0_read,
   output logic avm_local_bb1_ld__u0_inst0_write,
   output logic [4:0] avm_local_bb1_ld__u0_inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld__u0_inst0_address,
   output logic [511:0] avm_local_bb1_ld__u0_inst0_writedata,
   output logic [63:0] avm_local_bb1_ld__u0_inst0_byteenable,
   input logic avm_local_bb1_ld__u0_inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld__u0_inst0_readdata,
   input logic avm_local_bb1_ld__u0_inst0_readdatavalid,
   input logic avm_local_bb1_ld__u0_inst0_writeack,
   // AVM avm_local_bb4_ld__inst0
   output logic avm_local_bb4_ld__inst0_enable,
   output logic avm_local_bb4_ld__inst0_read,
   output logic avm_local_bb4_ld__inst0_write,
   output logic [4:0] avm_local_bb4_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb4_ld__inst0_address,
   output logic [511:0] avm_local_bb4_ld__inst0_writedata,
   output logic [63:0] avm_local_bb4_ld__inst0_byteenable,
   input logic avm_local_bb4_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb4_ld__inst0_readdata,
   input logic avm_local_bb4_ld__inst0_readdatavalid,
   input logic avm_local_bb4_ld__inst0_writeack,
   // AVM avm_local_bb4_ld_memcoalesce_param_load_060_inst0
   output logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_enable,
   output logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_read,
   output logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_write,
   output logic [4:0] avm_local_bb4_ld_memcoalesce_param_load_060_inst0_burstcount,
   output logic [31:0] avm_local_bb4_ld_memcoalesce_param_load_060_inst0_address,
   output logic [511:0] avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writedata,
   output logic [63:0] avm_local_bb4_ld_memcoalesce_param_load_060_inst0_byteenable,
   input logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_waitrequest,
   input logic [511:0] avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdata,
   input logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdatavalid,
   input logic avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writeack,
   // AVM avm_local_bb4_st__27_inst0
   output logic avm_local_bb4_st__27_inst0_enable,
   output logic avm_local_bb4_st__27_inst0_read,
   output logic avm_local_bb4_st__27_inst0_write,
   output logic [4:0] avm_local_bb4_st__27_inst0_burstcount,
   output logic [31:0] avm_local_bb4_st__27_inst0_address,
   output logic [511:0] avm_local_bb4_st__27_inst0_writedata,
   output logic [63:0] avm_local_bb4_st__27_inst0_byteenable,
   input logic avm_local_bb4_st__27_inst0_waitrequest,
   input logic [511:0] avm_local_bb4_st__27_inst0_readdata,
   input logic avm_local_bb4_st__27_inst0_readdatavalid,
   input logic avm_local_bb4_st__27_inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of paddingLayer_function_wrapper
   paddingLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack),
      // AVM avm_local_bb1_ld__inst0
      .avm_local_bb1_ld__inst0_enable(avm_local_bb1_ld__inst0_enable),
      .avm_local_bb1_ld__inst0_read(avm_local_bb1_ld__inst0_read),
      .avm_local_bb1_ld__inst0_write(avm_local_bb1_ld__inst0_write),
      .avm_local_bb1_ld__inst0_burstcount(avm_local_bb1_ld__inst0_burstcount),
      .avm_local_bb1_ld__inst0_address(avm_local_bb1_ld__inst0_address),
      .avm_local_bb1_ld__inst0_writedata(avm_local_bb1_ld__inst0_writedata),
      .avm_local_bb1_ld__inst0_byteenable(avm_local_bb1_ld__inst0_byteenable),
      .avm_local_bb1_ld__inst0_waitrequest(avm_local_bb1_ld__inst0_waitrequest),
      .avm_local_bb1_ld__inst0_readdata(avm_local_bb1_ld__inst0_readdata),
      .avm_local_bb1_ld__inst0_readdatavalid(avm_local_bb1_ld__inst0_readdatavalid),
      .avm_local_bb1_ld__inst0_writeack(avm_local_bb1_ld__inst0_writeack),
      // AVM avm_local_bb1_ld__u0_inst0
      .avm_local_bb1_ld__u0_inst0_enable(avm_local_bb1_ld__u0_inst0_enable),
      .avm_local_bb1_ld__u0_inst0_read(avm_local_bb1_ld__u0_inst0_read),
      .avm_local_bb1_ld__u0_inst0_write(avm_local_bb1_ld__u0_inst0_write),
      .avm_local_bb1_ld__u0_inst0_burstcount(avm_local_bb1_ld__u0_inst0_burstcount),
      .avm_local_bb1_ld__u0_inst0_address(avm_local_bb1_ld__u0_inst0_address),
      .avm_local_bb1_ld__u0_inst0_writedata(avm_local_bb1_ld__u0_inst0_writedata),
      .avm_local_bb1_ld__u0_inst0_byteenable(avm_local_bb1_ld__u0_inst0_byteenable),
      .avm_local_bb1_ld__u0_inst0_waitrequest(avm_local_bb1_ld__u0_inst0_waitrequest),
      .avm_local_bb1_ld__u0_inst0_readdata(avm_local_bb1_ld__u0_inst0_readdata),
      .avm_local_bb1_ld__u0_inst0_readdatavalid(avm_local_bb1_ld__u0_inst0_readdatavalid),
      .avm_local_bb1_ld__u0_inst0_writeack(avm_local_bb1_ld__u0_inst0_writeack),
      // AVM avm_local_bb4_ld__inst0
      .avm_local_bb4_ld__inst0_enable(avm_local_bb4_ld__inst0_enable),
      .avm_local_bb4_ld__inst0_read(avm_local_bb4_ld__inst0_read),
      .avm_local_bb4_ld__inst0_write(avm_local_bb4_ld__inst0_write),
      .avm_local_bb4_ld__inst0_burstcount(avm_local_bb4_ld__inst0_burstcount),
      .avm_local_bb4_ld__inst0_address(avm_local_bb4_ld__inst0_address),
      .avm_local_bb4_ld__inst0_writedata(avm_local_bb4_ld__inst0_writedata),
      .avm_local_bb4_ld__inst0_byteenable(avm_local_bb4_ld__inst0_byteenable),
      .avm_local_bb4_ld__inst0_waitrequest(avm_local_bb4_ld__inst0_waitrequest),
      .avm_local_bb4_ld__inst0_readdata(avm_local_bb4_ld__inst0_readdata),
      .avm_local_bb4_ld__inst0_readdatavalid(avm_local_bb4_ld__inst0_readdatavalid),
      .avm_local_bb4_ld__inst0_writeack(avm_local_bb4_ld__inst0_writeack),
      // AVM avm_local_bb4_ld_memcoalesce_param_load_060_inst0
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_enable(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_enable),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_read(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_read),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_write(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_write),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_burstcount(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_burstcount),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_address(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_address),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writedata(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writedata),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_byteenable(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_byteenable),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_waitrequest(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_waitrequest),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdata(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdata),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdatavalid(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_readdatavalid),
      .avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writeack(avm_local_bb4_ld_memcoalesce_param_load_060_inst0_writeack),
      // AVM avm_local_bb4_st__27_inst0
      .avm_local_bb4_st__27_inst0_enable(avm_local_bb4_st__27_inst0_enable),
      .avm_local_bb4_st__27_inst0_read(avm_local_bb4_st__27_inst0_read),
      .avm_local_bb4_st__27_inst0_write(avm_local_bb4_st__27_inst0_write),
      .avm_local_bb4_st__27_inst0_burstcount(avm_local_bb4_st__27_inst0_burstcount),
      .avm_local_bb4_st__27_inst0_address(avm_local_bb4_st__27_inst0_address),
      .avm_local_bb4_st__27_inst0_writedata(avm_local_bb4_st__27_inst0_writedata),
      .avm_local_bb4_st__27_inst0_byteenable(avm_local_bb4_st__27_inst0_byteenable),
      .avm_local_bb4_st__27_inst0_waitrequest(avm_local_bb4_st__27_inst0_waitrequest),
      .avm_local_bb4_st__27_inst0_readdata(avm_local_bb4_st__27_inst0_readdata),
      .avm_local_bb4_st__27_inst0_readdatavalid(avm_local_bb4_st__27_inst0_readdatavalid),
      .avm_local_bb4_st__27_inst0_writeack(avm_local_bb4_st__27_inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE poolingLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module poolingLayer_top_wrapper_0
(
   input logic start,
   input logic [255:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read,
   output logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write,
   output logic [4:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address,
   output logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata,
   output logic [63:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid,
   input logic avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack,
   // AVM avm_local_bb1_ld_memcoalesce_param_load_093_inst0
   output logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_enable,
   output logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_read,
   output logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_write,
   output logic [4:0] avm_local_bb1_ld_memcoalesce_param_load_093_inst0_burstcount,
   output logic [31:0] avm_local_bb1_ld_memcoalesce_param_load_093_inst0_address,
   output logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writedata,
   output logic [63:0] avm_local_bb1_ld_memcoalesce_param_load_093_inst0_byteenable,
   input logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_waitrequest,
   input logic [511:0] avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdata,
   input logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdatavalid,
   input logic avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writeack,
   // AVM avm_local_bb3_ld__inst0
   output logic avm_local_bb3_ld__inst0_enable,
   output logic avm_local_bb3_ld__inst0_read,
   output logic avm_local_bb3_ld__inst0_write,
   output logic [4:0] avm_local_bb3_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb3_ld__inst0_address,
   output logic [511:0] avm_local_bb3_ld__inst0_writedata,
   output logic [63:0] avm_local_bb3_ld__inst0_byteenable,
   input logic avm_local_bb3_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb3_ld__inst0_readdata,
   input logic avm_local_bb3_ld__inst0_readdatavalid,
   input logic avm_local_bb3_ld__inst0_writeack,
   // AVM avm_local_bb5_ld__inst0
   output logic avm_local_bb5_ld__inst0_enable,
   output logic avm_local_bb5_ld__inst0_read,
   output logic avm_local_bb5_ld__inst0_write,
   output logic [4:0] avm_local_bb5_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb5_ld__inst0_address,
   output logic [511:0] avm_local_bb5_ld__inst0_writedata,
   output logic [63:0] avm_local_bb5_ld__inst0_byteenable,
   input logic avm_local_bb5_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb5_ld__inst0_readdata,
   input logic avm_local_bb5_ld__inst0_readdatavalid,
   input logic avm_local_bb5_ld__inst0_writeack,
   // AVM avm_local_bb6_ld__inst0
   output logic avm_local_bb6_ld__inst0_enable,
   output logic avm_local_bb6_ld__inst0_read,
   output logic avm_local_bb6_ld__inst0_write,
   output logic [4:0] avm_local_bb6_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb6_ld__inst0_address,
   output logic [511:0] avm_local_bb6_ld__inst0_writedata,
   output logic [63:0] avm_local_bb6_ld__inst0_byteenable,
   input logic avm_local_bb6_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb6_ld__inst0_readdata,
   input logic avm_local_bb6_ld__inst0_readdatavalid,
   input logic avm_local_bb6_ld__inst0_writeack,
   // AVM avm_local_bb6_st_select55_inst0
   output logic avm_local_bb6_st_select55_inst0_enable,
   output logic avm_local_bb6_st_select55_inst0_read,
   output logic avm_local_bb6_st_select55_inst0_write,
   output logic [4:0] avm_local_bb6_st_select55_inst0_burstcount,
   output logic [31:0] avm_local_bb6_st_select55_inst0_address,
   output logic [511:0] avm_local_bb6_st_select55_inst0_writedata,
   output logic [63:0] avm_local_bb6_st_select55_inst0_byteenable,
   input logic avm_local_bb6_st_select55_inst0_waitrequest,
   input logic [511:0] avm_local_bb6_st_select55_inst0_readdata,
   input logic avm_local_bb6_st_select55_inst0_readdatavalid,
   input logic avm_local_bb6_st_select55_inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of poolingLayer_function_wrapper
   poolingLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld_memcoalesce_param_load_0_inst0
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_enable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_read),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_write),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_burstcount),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_address),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writedata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_byteenable),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_waitrequest),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdata),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_readdatavalid),
      .avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack(avm_local_bb0_ld_memcoalesce_param_load_0_inst0_writeack),
      // AVM avm_local_bb1_ld_memcoalesce_param_load_093_inst0
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_enable(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_enable),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_read(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_read),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_write(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_write),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_burstcount(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_burstcount),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_address(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_address),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writedata(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writedata),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_byteenable(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_byteenable),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_waitrequest(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_waitrequest),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdata(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdata),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdatavalid(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_readdatavalid),
      .avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writeack(avm_local_bb1_ld_memcoalesce_param_load_093_inst0_writeack),
      // AVM avm_local_bb3_ld__inst0
      .avm_local_bb3_ld__inst0_enable(avm_local_bb3_ld__inst0_enable),
      .avm_local_bb3_ld__inst0_read(avm_local_bb3_ld__inst0_read),
      .avm_local_bb3_ld__inst0_write(avm_local_bb3_ld__inst0_write),
      .avm_local_bb3_ld__inst0_burstcount(avm_local_bb3_ld__inst0_burstcount),
      .avm_local_bb3_ld__inst0_address(avm_local_bb3_ld__inst0_address),
      .avm_local_bb3_ld__inst0_writedata(avm_local_bb3_ld__inst0_writedata),
      .avm_local_bb3_ld__inst0_byteenable(avm_local_bb3_ld__inst0_byteenable),
      .avm_local_bb3_ld__inst0_waitrequest(avm_local_bb3_ld__inst0_waitrequest),
      .avm_local_bb3_ld__inst0_readdata(avm_local_bb3_ld__inst0_readdata),
      .avm_local_bb3_ld__inst0_readdatavalid(avm_local_bb3_ld__inst0_readdatavalid),
      .avm_local_bb3_ld__inst0_writeack(avm_local_bb3_ld__inst0_writeack),
      // AVM avm_local_bb5_ld__inst0
      .avm_local_bb5_ld__inst0_enable(avm_local_bb5_ld__inst0_enable),
      .avm_local_bb5_ld__inst0_read(avm_local_bb5_ld__inst0_read),
      .avm_local_bb5_ld__inst0_write(avm_local_bb5_ld__inst0_write),
      .avm_local_bb5_ld__inst0_burstcount(avm_local_bb5_ld__inst0_burstcount),
      .avm_local_bb5_ld__inst0_address(avm_local_bb5_ld__inst0_address),
      .avm_local_bb5_ld__inst0_writedata(avm_local_bb5_ld__inst0_writedata),
      .avm_local_bb5_ld__inst0_byteenable(avm_local_bb5_ld__inst0_byteenable),
      .avm_local_bb5_ld__inst0_waitrequest(avm_local_bb5_ld__inst0_waitrequest),
      .avm_local_bb5_ld__inst0_readdata(avm_local_bb5_ld__inst0_readdata),
      .avm_local_bb5_ld__inst0_readdatavalid(avm_local_bb5_ld__inst0_readdatavalid),
      .avm_local_bb5_ld__inst0_writeack(avm_local_bb5_ld__inst0_writeack),
      // AVM avm_local_bb6_ld__inst0
      .avm_local_bb6_ld__inst0_enable(avm_local_bb6_ld__inst0_enable),
      .avm_local_bb6_ld__inst0_read(avm_local_bb6_ld__inst0_read),
      .avm_local_bb6_ld__inst0_write(avm_local_bb6_ld__inst0_write),
      .avm_local_bb6_ld__inst0_burstcount(avm_local_bb6_ld__inst0_burstcount),
      .avm_local_bb6_ld__inst0_address(avm_local_bb6_ld__inst0_address),
      .avm_local_bb6_ld__inst0_writedata(avm_local_bb6_ld__inst0_writedata),
      .avm_local_bb6_ld__inst0_byteenable(avm_local_bb6_ld__inst0_byteenable),
      .avm_local_bb6_ld__inst0_waitrequest(avm_local_bb6_ld__inst0_waitrequest),
      .avm_local_bb6_ld__inst0_readdata(avm_local_bb6_ld__inst0_readdata),
      .avm_local_bb6_ld__inst0_readdatavalid(avm_local_bb6_ld__inst0_readdatavalid),
      .avm_local_bb6_ld__inst0_writeack(avm_local_bb6_ld__inst0_writeack),
      // AVM avm_local_bb6_st_select55_inst0
      .avm_local_bb6_st_select55_inst0_enable(avm_local_bb6_st_select55_inst0_enable),
      .avm_local_bb6_st_select55_inst0_read(avm_local_bb6_st_select55_inst0_read),
      .avm_local_bb6_st_select55_inst0_write(avm_local_bb6_st_select55_inst0_write),
      .avm_local_bb6_st_select55_inst0_burstcount(avm_local_bb6_st_select55_inst0_burstcount),
      .avm_local_bb6_st_select55_inst0_address(avm_local_bb6_st_select55_inst0_address),
      .avm_local_bb6_st_select55_inst0_writedata(avm_local_bb6_st_select55_inst0_writedata),
      .avm_local_bb6_st_select55_inst0_byteenable(avm_local_bb6_st_select55_inst0_byteenable),
      .avm_local_bb6_st_select55_inst0_waitrequest(avm_local_bb6_st_select55_inst0_waitrequest),
      .avm_local_bb6_st_select55_inst0_readdata(avm_local_bb6_st_select55_inst0_readdata),
      .avm_local_bb6_st_select55_inst0_readdatavalid(avm_local_bb6_st_select55_inst0_readdatavalid),
      .avm_local_bb6_st_select55_inst0_writeack(avm_local_bb6_st_select55_inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

/////////////////////////////////////////////////////////////////
// MODULE reluLayer_top_wrapper_0
/////////////////////////////////////////////////////////////////
module reluLayer_top_wrapper_0
(
   input logic start,
   input logic [255:0] kernel_arguments,
   input logic [31:0] work_dim,
   input logic [31:0] global_offset [2:0],
   output logic kernel_valid_out,
   output logic has_a_write_pending,
   output logic has_a_lsu_active,
   input logic [31:0] global_id [2:0],
   input logic [31:0] local_id [2:0],
   input logic [31:0] group_id [2:0],
   input logic [31:0] global_size [2:0],
   input logic [31:0] local_size [2:0],
   input logic [31:0] num_groups [2:0],
   input logic [31:0] workgroup_size,
   output logic kernel_stall_out,
   input logic kernel_valid_in,
   input logic clock,
   input logic resetn,
   input logic clock2x,
   // AVM avm_local_bb0_ld__inst0
   output logic avm_local_bb0_ld__inst0_enable,
   output logic avm_local_bb0_ld__inst0_read,
   output logic avm_local_bb0_ld__inst0_write,
   output logic [4:0] avm_local_bb0_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb0_ld__inst0_address,
   output logic [511:0] avm_local_bb0_ld__inst0_writedata,
   output logic [63:0] avm_local_bb0_ld__inst0_byteenable,
   input logic avm_local_bb0_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb0_ld__inst0_readdata,
   input logic avm_local_bb0_ld__inst0_readdatavalid,
   input logic avm_local_bb0_ld__inst0_writeack,
   // AVM avm_local_bb2_ld__inst0
   output logic avm_local_bb2_ld__inst0_enable,
   output logic avm_local_bb2_ld__inst0_read,
   output logic avm_local_bb2_ld__inst0_write,
   output logic [4:0] avm_local_bb2_ld__inst0_burstcount,
   output logic [31:0] avm_local_bb2_ld__inst0_address,
   output logic [511:0] avm_local_bb2_ld__inst0_writedata,
   output logic [63:0] avm_local_bb2_ld__inst0_byteenable,
   input logic avm_local_bb2_ld__inst0_waitrequest,
   input logic [511:0] avm_local_bb2_ld__inst0_readdata,
   input logic avm_local_bb2_ld__inst0_readdatavalid,
   input logic avm_local_bb2_ld__inst0_writeack,
   // AVM avm_local_bb2_st_cond_inst0
   output logic avm_local_bb2_st_cond_inst0_enable,
   output logic avm_local_bb2_st_cond_inst0_read,
   output logic avm_local_bb2_st_cond_inst0_write,
   output logic [4:0] avm_local_bb2_st_cond_inst0_burstcount,
   output logic [31:0] avm_local_bb2_st_cond_inst0_address,
   output logic [511:0] avm_local_bb2_st_cond_inst0_writedata,
   output logic [63:0] avm_local_bb2_st_cond_inst0_byteenable,
   input logic avm_local_bb2_st_cond_inst0_waitrequest,
   input logic [511:0] avm_local_bb2_st_cond_inst0_readdata,
   input logic avm_local_bb2_st_cond_inst0_readdatavalid,
   input logic avm_local_bb2_st_cond_inst0_writeack
);
   logic lmem_invalid_single_bit;

   // INST kernel of reluLayer_function_wrapper
   reluLayer_function_wrapper kernel
   (
      .local_router_hang(lmem_invalid_single_bit),
      .start(start),
      .kernel_arguments(kernel_arguments),
      .work_dim(work_dim),
      .global_offset_0(global_offset[0]),
      .global_offset_1(global_offset[1]),
      .global_offset_2(global_offset[2]),
      .kernel_valid_out(kernel_valid_out),
      .has_a_write_pending(has_a_write_pending),
      .has_a_lsu_active(has_a_lsu_active),
      .global_id_0(global_id[0]),
      .global_id_1(global_id[1]),
      .global_id_2(global_id[2]),
      .local_id_0(local_id[0]),
      .local_id_1(local_id[1]),
      .local_id_2(local_id[2]),
      .group_id_0(group_id[0]),
      .group_id_1(group_id[1]),
      .group_id_2(group_id[2]),
      .global_size_0(global_size[0]),
      .global_size_1(global_size[1]),
      .global_size_2(global_size[2]),
      .local_size_0(local_size[0]),
      .local_size_1(local_size[1]),
      .local_size_2(local_size[2]),
      .num_groups_0(num_groups[0]),
      .num_groups_1(num_groups[1]),
      .num_groups_2(num_groups[2]),
      .workgroup_size(workgroup_size),
      .kernel_stall_out(kernel_stall_out),
      .kernel_valid_in(kernel_valid_in),
      .clock(clock),
      .resetn(resetn),
      .clock2x(clock2x),
      // AVM avm_local_bb0_ld__inst0
      .avm_local_bb0_ld__inst0_enable(avm_local_bb0_ld__inst0_enable),
      .avm_local_bb0_ld__inst0_read(avm_local_bb0_ld__inst0_read),
      .avm_local_bb0_ld__inst0_write(avm_local_bb0_ld__inst0_write),
      .avm_local_bb0_ld__inst0_burstcount(avm_local_bb0_ld__inst0_burstcount),
      .avm_local_bb0_ld__inst0_address(avm_local_bb0_ld__inst0_address),
      .avm_local_bb0_ld__inst0_writedata(avm_local_bb0_ld__inst0_writedata),
      .avm_local_bb0_ld__inst0_byteenable(avm_local_bb0_ld__inst0_byteenable),
      .avm_local_bb0_ld__inst0_waitrequest(avm_local_bb0_ld__inst0_waitrequest),
      .avm_local_bb0_ld__inst0_readdata(avm_local_bb0_ld__inst0_readdata),
      .avm_local_bb0_ld__inst0_readdatavalid(avm_local_bb0_ld__inst0_readdatavalid),
      .avm_local_bb0_ld__inst0_writeack(avm_local_bb0_ld__inst0_writeack),
      // AVM avm_local_bb2_ld__inst0
      .avm_local_bb2_ld__inst0_enable(avm_local_bb2_ld__inst0_enable),
      .avm_local_bb2_ld__inst0_read(avm_local_bb2_ld__inst0_read),
      .avm_local_bb2_ld__inst0_write(avm_local_bb2_ld__inst0_write),
      .avm_local_bb2_ld__inst0_burstcount(avm_local_bb2_ld__inst0_burstcount),
      .avm_local_bb2_ld__inst0_address(avm_local_bb2_ld__inst0_address),
      .avm_local_bb2_ld__inst0_writedata(avm_local_bb2_ld__inst0_writedata),
      .avm_local_bb2_ld__inst0_byteenable(avm_local_bb2_ld__inst0_byteenable),
      .avm_local_bb2_ld__inst0_waitrequest(avm_local_bb2_ld__inst0_waitrequest),
      .avm_local_bb2_ld__inst0_readdata(avm_local_bb2_ld__inst0_readdata),
      .avm_local_bb2_ld__inst0_readdatavalid(avm_local_bb2_ld__inst0_readdatavalid),
      .avm_local_bb2_ld__inst0_writeack(avm_local_bb2_ld__inst0_writeack),
      // AVM avm_local_bb2_st_cond_inst0
      .avm_local_bb2_st_cond_inst0_enable(avm_local_bb2_st_cond_inst0_enable),
      .avm_local_bb2_st_cond_inst0_read(avm_local_bb2_st_cond_inst0_read),
      .avm_local_bb2_st_cond_inst0_write(avm_local_bb2_st_cond_inst0_write),
      .avm_local_bb2_st_cond_inst0_burstcount(avm_local_bb2_st_cond_inst0_burstcount),
      .avm_local_bb2_st_cond_inst0_address(avm_local_bb2_st_cond_inst0_address),
      .avm_local_bb2_st_cond_inst0_writedata(avm_local_bb2_st_cond_inst0_writedata),
      .avm_local_bb2_st_cond_inst0_byteenable(avm_local_bb2_st_cond_inst0_byteenable),
      .avm_local_bb2_st_cond_inst0_waitrequest(avm_local_bb2_st_cond_inst0_waitrequest),
      .avm_local_bb2_st_cond_inst0_readdata(avm_local_bb2_st_cond_inst0_readdata),
      .avm_local_bb2_st_cond_inst0_readdatavalid(avm_local_bb2_st_cond_inst0_readdatavalid),
      .avm_local_bb2_st_cond_inst0_writeack(avm_local_bb2_st_cond_inst0_writeack)
   );

   assign lmem_invalid_single_bit = 'b0;
endmodule

