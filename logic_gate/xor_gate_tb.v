module xor_gate_tb;
reg a,b;
wire y;
xor_gate dut(.a(a),.b(b),.y(y));
initial
begin
$dumpfile("wave_xor.vcd");
$dumpvars(0,xor_gate_tb);
a=0;b=0; #10 $display("a=%b,b=%b,y=%b",a,b,y);
a=0;b=1; #10 $display("a=%b,b=%b,y=%b",a,b,y);
a=1;b=0; #10 $display("a=%b,b=%b,y=%b",a,b,y); 
a=1;b=1; #10 $display("a=%b,b=%b,y=%b",a,b,y);
#10 $finish;
end 
endmodule
