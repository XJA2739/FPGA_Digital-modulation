`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    2010��08��01�� 
// Design Name: 
// Module Name:    DA_I 
// Project Name:   DA I·���ģ��
// Target Devices: 
// Tool versions: 
// Description:    ʵ�ֲ���תƫ�����Ա��DAģ���I·�����ʾ��ʾ�����ϡ� 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DA_I(	clk,
               out_data,

					out_da_data,
					out_da_clk,
					out_da_wr);
	input clk;
	input [9:0]out_data;

	output [9:0]out_da_data;
	output out_da_clk;
	output out_da_wr;
	
	reg [9:0]data_temp;
	
	always @(posedge clk)
	begin
		data_temp <=  {~out_data[9],out_data[8 : 0]}; //��λȡ��;
	end

	assign out_da_data= data_temp[9: 0];
	assign out_da_clk =clk;
	assign out_da_wr =clk;


endmodule
