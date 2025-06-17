module adder_tb(
    );
    
    reg [3:0] InA ,InB;
    wire [3:0] OutSum;
    wire overflow;
    
    top_adder tb0(.InA(InA) , .InB(InB) , .OutSum(OutSum),.overflow(overflow));
    
   
    initial begin
        InA = 4'b0000;     InB = 4'b0000;
        #5 InA = 4'b0100 ; InB = 4'b0110;
        #5 InA = 4'b0101 ; InB = 4'b0111;
        #5 InA = 4'b1010 ; InB = 4'b0111;
        #5 InA = 4'b1111 ; InB = 4'b0011;
        #5 InA = 4'b1111 ; InB = 4'b0001;
    end
endmodule
