`timescale 1ns/1ns
module test1();
  reg i_clock;
  reg i_enable;
  reg i_switch_1;
  reg i_switch_2;
  wire o_led_drive;
  
  tutorial_led_blink dut (
   i_clock,
   i_enable,
   i_switch_1,
   i_switch_2,
   o_led_drive
  );

  initial begin
    i_clock = 0;
    forever #5 i_clock = ~i_clock;
  end
	
  initial begin
    i_enable = 0; i_switch_1 = 0; i_switch_2 = 0;
    #30 i_enable = 1;
    #20 i_switch_1 = 1; i_switch_2 = 0;
    #20 i_switch_1 = 0; i_switch_2 = 1;
    #20 i_switch_1 = 1; i_switch_2 = 1;
  end
	
endmodule
