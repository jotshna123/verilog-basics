module half_adder_tb;
    reg a, b;
    wire s, c;
    half_adder dut (.a(a), .b(b), .c(c), .s(s)); 

    initial begin
        $dumpfile("wave_half.vcd");        
        $dumpvars(0, half_adder_tb);    
        a=0; b=0;  #10 $display("a=%b, b=%b, s=%b, c=%b", a, b, s, c);
        a=0; b=1;  #10 $display("a=%b, b=%b, s=%b, c=%b", a, b, s, c);
        a=1; b=0;  #10 $display("a=%b, b=%b, s=%b, c=%b", a, b, s, c);
        a=1; b=1;  #10 $display("a=%b, b=%b, s=%b, c=%b", a, b, s, c);
        #10 $finish;
    end
endmodule
