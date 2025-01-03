module elevator_top (
    input clk,rst,
    input [2:0] req_floor,
    input emergency_stop,
    output [1:0] door,
    output reg [2:0] current_floor,
    output [7:0] requests,
    output up,down,idle,
);
reg door_timer;
reg emergency_stopped;
reg flag=0;

always @(req_floor) begin

requests[req_floor] = 1;

if (max_request < req_floor) begin
max_request = req_floor;
end
if (min_request > req_floor) begin
min_request = req_floor;
end

end
endmodule