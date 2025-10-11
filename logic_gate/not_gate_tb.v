module not_tb;
reg a;
wire y;
not_gate dut(.a(a),.y(y));
initial 
begin 
$dumpfile("wave_not.vcd");
$dumpvars(0,not_tb);
a=0; #10 $display("a=%b,y=%b",a,y);
a=1; #10 $display("a=%b,y=%b",a,y);
#10 $finish;
end 
endmodule
