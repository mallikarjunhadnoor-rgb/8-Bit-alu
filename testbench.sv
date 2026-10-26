module alu_logic_tb;
  reg [7:0]A,B;
  reg [3:0]op;
  wire [7:0]alu_out;
  wire carry,zero,overflow;
  wire [8:0] temp;
  
  alu dut(A,B,op,alu_out,carry,zero,overflow,temp);
  initial begin
    
    //initialize the input
    A=8'b0;
    B=8'b0;
    op=8'b0;
    
    #100;
    A=8'd10; B=8'd20; op=4'b0000;
    #10 A=8'd30; B=8'd10; op=4'b0001;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b0010;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b0011;
    #10 A=8'b10101011; op=4'b0100;
    #10 A=8'b10101011; op=4'b0101;
    #10 A=8'b10101011; op=4'b0110;
    #10 A=8'b10101011; op=4'b0111;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b1000;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b1001;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b1010;
    #10 A=8'b10101011; B=8'b10111010; op= 4'b1011;
    #10 A=8'b10101011; op=4'b1100;
    #10 B=8'b10101011; op=4'b1101;
    #10 A=8'b10101011; op=4'b1110;
    #10 B=8'b10101011; op=4'b1111;
    
  end
  initial begin
    $monitor("sim time=%0t,A=%d,B=%d,op=%b,alu_out=%d,carry=%b,zero=%b,overflow=%b",$time,A,B,op,alu_out,carry,zero,overflow);
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,op,alu_out,carry,zero,overflow);
  end
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
