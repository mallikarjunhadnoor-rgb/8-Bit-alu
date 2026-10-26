module alu(A,B,op,alu_out,carry,zero,overflow,temp);
  input [7:0]A,B;
  input [3:0]op;
  output reg [7:0]alu_out;
  output reg carry ;
  output reg zero;
  output reg overflow;
  output reg [8:0] temp;
  
  
  always @(*)
    begin
      //default values to avoid the latches
      alu_out=8'b0;
      carry=1'b0;
      temp=9'b0;
      overflow=1'b0;
      zero=1'b0;
      case(op)
        //airtmetic opertauin
        4'b0000:begin  //addition
          temp=A+B;
          alu_out=temp[7:0];
          carry=temp[8];
      // Overflow flag for signed addition (if signs of A and B match, but result sign differs)
          overflow=(A[7]!=B[7])&&(alu_out[7]!=A[7]);
        end
        4'b0001:begin //subtraction
          temp=A-B;
          alu_out=temp[7:0];
          carry=temp[8];
          // Overflow flag for signed addition (if signs of A and B match, but result sign differs)
          overflow=(A[7]!=B[7])&&(alu_out[7]!=A[7]);
        end
        //logical opration
        4'b0010:alu_out=A&B; //AND
        4'b0011:alu_out=A|B;  //OR
        4'b0100:alu_out=A<<1; //LOGICAL LEST SHIFT
        4'b0101:alu_out=A>>1; //LOGICAL RIGHT SHIFT
        4'b0110:alu_out={A[6:0] ,A[7]}; // roted by left by 1;
        4'b0111:alu_out={A[0],A[7:0]}; // roted by right by 1;
        4'b1000:alu_out=A^B; //XOR
        4'b1001:alu_out=~(A^B);  //XNOR
        4'b1010:alu_out=~(A&B);  //NAND
        4'b1011:alu_out=~(A|B);  //NOR
        4'b1100:alu_out=~A;       //NOT A
        4'b1101:alu_out=~B;       //NOT B
        4'b1110:alu_out=A;
        4'b1111:alu_out=B;
        default:alu_out=8'b0;
      endcase
      zero=(alu_out==8'b0);
       
    end
endmodule
         
