module top_adder(
    input [3:0] InA,
    input [3:0] InB,
    output [3:0] OutSum,
    output overflow
    );
    
    wire carry1 , carry2, carry3;
    
    full_adder_1bit in0(.FA1_InA(InA[0]) , .FA1_InB(InB[0]) , .FA1_InC(1'b0) , .FA1_OutSum(OutSum[0]) , .FA1_OutC(carry1));
    full_adder_1bit in1(.FA1_InA(InA[1]) , .FA1_InB(InB[1]) , .FA1_InC(carry1) , .FA1_OutSum(OutSum[1]) , .FA1_OutC(carry2));
    full_adder_1bit in2(.FA1_InA(InA[2]) , .FA1_InB(InB[2]) , .FA1_InC(carry2) , .FA1_OutSum(OutSum[2]) , .FA1_OutC(carry3));
    full_adder_1bit in3(.FA1_InA(InA[3]) , .FA1_InB(InB[3]) , .FA1_InC(carry3) , .FA1_OutSum(OutSum[3]) , .FA1_OutC(overflow));

endmodule
