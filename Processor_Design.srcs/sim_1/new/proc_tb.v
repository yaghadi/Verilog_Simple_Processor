`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 01:05:58 PM
// Design Name: 
// Module Name: proc_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();


integer i=0;

reg clk=0,sys_rst=0;
reg [15:0]din=0;
wire [15:0]dout;
top dut(clk,sys_rst,din,dout);

always #5 clk = ~ clk;
//updating all values on the GPR to 4
initial
begin
for(i=0;i<32;i=i+1)begin
   dut.GPR[i]=0;
end 
end 
initial begin
sys_rst<=1'b1;
repeat(5) @(posedge clk);
sys_rst<=1'b0;
#1800;
$stop;
end


//initial begin
////immediate add op
//$display("----------------------------------------------");
//dut.IR=0;
//dut.`imm_mode=1;
//dut.`oper_type=2;
//dut.`rsrc1=2;
//dut.`isrc=6;
//dut.`rdst=0;
//#10;
//$display("OP:ADI Rsrc1:%0d  Rsrc2:%0d  Rdst:%0d",dut.GPR[2],dut.`isrc,dut.GPR[0]);
//$display("----------------------------------------------");
////register add op
//dut.IR=0;
//dut.`oper_type=2;
//dut.`imm_mode=0;
//dut.`rsrc1=2;
//dut.`rsrc2=3;
//dut.`rdst=0;
//#10;
//$display("OP:ADD Rsrc1:%0d  Rsrc2:%0d  Rdst:%0d",dut.GPR[2],dut.GPR[3],dut.GPR[0]);
//$display("----------------------------------------------");

////immediate mov op
//dut.IR=0;
//dut.`oper_type=1;
//dut.`imm_mode=1;
//dut.`isrc=66;
//dut.`rdst=20;
//#10;
//$display("OP:MOVI Rsrc1:%0d  Rdst:%0d",dut.`isrc,dut.GPR[20]);
//$display("----------------------------------------------");
////register mov op
//dut.IR=0;
//dut.`oper_type=1;
//dut.`imm_mode=0;
//dut.`rsrc2=3;
//dut.`rsrc1=2;
//dut.`rdst=0;
//#10;
//$display("OP:MOV Rsrc1:%0d  Rsrc2:%0d  Rdst:%0d",dut.GPR[2],dut.GPR[3],dut.GPR[0]);
//$display("----------------------------------------------");
////immediate bitwise or operation
//dut.IR=0;
//dut.`oper_type=5;
//dut.`imm_mode=1;
//dut.`rsrc1=3;
//dut.`isrc=8'b00011101;
//dut.`rdst=0;
//#10;
//$display("OP:ORI Rsrc1:%8b  Rsrc2:%8b  Rdst:%8b",dut.`isrc,dut.GPR[3],dut.GPR[0]);
//$display("----------------------------------------------");
////immediate bitwise and operation
//dut.IR=0;
//dut.`oper_type=6;
//dut.`imm_mode=1;
//dut.`rsrc1=3;
//dut.`isrc=8'b00011101;
//dut.`rdst=0;
//#10;
//$display("OP:ANDI Rsrc1:%8b  Rsrc2:%8b  Rdst:%8b",dut.`isrc,dut.GPR[3],dut.GPR[0]);
//$display("----------------------------------------------");
////sign flag
//dut.IR=0;
//dut.GPR[0]=16'h8000;
//dut.GPR[1]=0;
//dut.`oper_type=2;
//dut.`imm_mode=0;
//dut.`rsrc1=1;
//dut.`rsrc2=0;
//dut.`rdst=2;
//#10;
//$display("OP:SIGN Rsrc1:%8b  Rsrc2:%8b  Rdst:%8b",dut.GPR[0],dut.GPR[1],dut.GPR[2]);
//$display("----------------------------------------------");
////carry flag
//dut.IR=0;
//dut.GPR[0]=16'h8000;
//dut.GPR[1]=16'h8002;
//dut.`oper_type=2;
//dut.`imm_mode=0;
//dut.`rsrc1=1;
//dut.`rsrc2=0;
//dut.`rdst=2;
//#10;
//$display("OP:CARRY AND OVERFLOW Rsrc1:%8b  Rsrc2:%8b  Rdst:%8b",dut.GPR[0],dut.GPR[1],dut.GPR[2]);
//$display("----------------------------------------------");
////carry flag
//dut.IR=0;
//dut.GPR[0]=16'h0000;
//dut.GPR[1]=16'h0000;
//dut.`oper_type=2;
//dut.`imm_mode=0;
//dut.`rsrc1=1;
//dut.`rsrc2=0;
//dut.`rdst=2;
//#10;
//$display("OP:ZERO Rsrc1:%8b  Rsrc2:%8b  Rdst:%8b",dut.GPR[0],dut.GPR[1],dut.GPR[2]);
//$display("----------------------------------------------");

//#20;
//$finish;
//end

endmodule
