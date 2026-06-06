module top(
    input clk,
    output led_g
);
    // Tang Nano 1Kの27MHzクロックをカウントしてLチカ
    reg [24:0] counter;
    always @(posedge clk) begin
        counter <= counter + 1;
    end
    
    // カウンターの最上位ビットをLEDに繋ぐ
    assign led_g = counter[24];
endmodule
