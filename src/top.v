module wokwi_tt03_simon_top_fast(
  input [7:0] io_in,
  output [7:0] io_out
);

  wire ticks_per_mili;

  assign ticks_per_mili = (io_in[7:6] == 2'b00) ? 16 :
                          (io_in[7:6] == 2'b01) ? 20 :
                          (io_in[7:6] == 2'b10) ? 32 : 35;
  
  simon simon1 (
      .clk   (io_in[0]),
      .rst   (io_in[1]),
      .ticks_per_milli (ticks_per_mili),
      .btn   (io_in[5:2]),
      .led   (io_out[3:0]),
      .sound (io_out[4])
  );

endmodule
