module full_adder_1bit(
    input FA1_InA,
    input FA1_InB,
    input FA1_InC,
    output FA1_OutSum,
    output FA1_OutC
    );
    
    assign FA1_OutSum = FA1_InA^FA1_InB^FA1_InC;
    assign FA1_OutC = ((FA1_InA^FA1_InB)&FA1_InC)|(FA1_InA&FA1_InB);
    
endmodule
