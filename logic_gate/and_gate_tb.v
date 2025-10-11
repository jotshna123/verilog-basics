`timescale 1ns/1ps

module tb_and_gate;
    reg a, b;
    wire y;
    and_gate dut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("wave_and.vcd");       
        $dumpvars(0, tb_and_gate);   
        a=0; b=0;  #10 $display("a=%b, b=%b, y=%b", a, b, y);
        a=0; b=1;  #10 $display("a=%b, b=%b, y=%b", a, b, y);
        a=1; b=0;  #10 $display("a=%b, b=%b, y=%b", a, b, y);
        a=1; b=1;  #10 $display("a=%b, b=%b, y=%b", a, b, y);
        #10 $finish;
    end
endmodule
