// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sun Oct 28 17:13:23 2018
//
// Verilog Description of module Top
//

module Top (clk, trigger_ah, trigger_al, \input , selector, input_d, 
            register_d, \output , segments, digits);   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(21[8:11])
    output clk /* synthesis .original_dir=IN_OUT */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(23[4:7])
    input trigger_ah;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(24[4:14])
    input trigger_al;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(25[4:14])
    input [7:0]\input ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(26[4:9])
    input [2:0]selector;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(27[4:12])
    output [7:0]input_d;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    output [7:0]register_d;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    output [7:0]\output ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    output [7:0]segments;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(33[4:12])
    output [3:0]digits;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(34[4:10])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(23[4:7])
    wire triggerh_db /* synthesis is_clock=1, SET_AS_NETWORK=triggerh_db */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(119[9:20])
    wire digit0_7__N_9 /* synthesis is_clock=1, SET_AS_NETWORK=digit0_7__N_9 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(123[9:15])
    
    wire GND_net, VCC_net, trigger_ah_c, selector_c_2, selector_c_1, 
        selector_c_0, digits_c_3, digits_c_2, digits_c_1, digits_c_0;
    wire [7:0]digit0;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(123[9:15])
    wire [7:0]digit2_7__N_18;
    wire [7:0]digit3_7__N_26;
    
    wire segments_7__N_82, segments_7__N_90, segments_7__N_84, segments_7__N_85, 
        segments_7__N_86, segments_7__N_87, segments_7__N_88, segments_7__N_89;
    
    VHI i2 (.Z(VCC_net));
    DisplayDriver display_output (.clk_c(clk_c), .digits_c_0(digits_c_0), 
            .n300({segments_7__N_82, segments_7__N_90, segments_7__N_84, 
            segments_7__N_85, segments_7__N_86, segments_7__N_87, segments_7__N_88, 
            segments_7__N_89}), .GND_net(GND_net), .digits_c_3(digits_c_3), 
            .digits_c_1(digits_c_1), .digits_c_2(digits_c_2), .\digit0[4] (digit0[4]), 
            .\digit0[5] (digit0[5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(162[18:31])
    OSCH clock (.stdby(GND_net), .osc(clk_c)) /* synthesis syn_instantiated=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(130[9:13])
    defparam clock.NOM_FREQ = "53.20";
    FD1S1A digit0_7__I_0_i5 (.D(digit2_7__N_18[7]), .CK(digit0_7__N_9), 
           .Q(digit0[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(142[2] 158[19])
    defparam digit0_7__I_0_i5.GSR = "ENABLED";
    LUT4 i551_3_lut (.A(selector_c_1), .B(selector_c_2), .C(selector_c_0), 
         .Z(digit0_7__N_9)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(145[6:22])
    defparam i551_3_lut.init = 16'h0101;
    LUT4 unit_mux_I_0_1_lut (.A(digit3_7__N_26[2]), .Z(digit2_7__N_18[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(146[7:21])
    defparam unit_mux_I_0_1_lut.init = 16'h5555;
    FD1S1A digit0_7__I_0_i6 (.D(digit3_7__N_26[2]), .CK(digit0_7__N_9), 
           .Q(digit0[5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(142[2] 158[19])
    defparam digit0_7__I_0_i6.GSR = "ENABLED";
    OB input_d_pad_7 (.I(GND_net), .O(input_d[7]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB clk_pad (.I(clk_c), .O(clk));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(23[4:7])
    OB input_d_pad_6 (.I(GND_net), .O(input_d[6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_5 (.I(GND_net), .O(input_d[5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_4 (.I(GND_net), .O(input_d[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_3 (.I(GND_net), .O(input_d[3]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_2 (.I(GND_net), .O(input_d[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_1 (.I(GND_net), .O(input_d[1]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB input_d_pad_0 (.I(GND_net), .O(input_d[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(29[4:11])
    OB register_d_pad_7 (.I(GND_net), .O(register_d[7]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_6 (.I(GND_net), .O(register_d[6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_5 (.I(GND_net), .O(register_d[5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_4 (.I(GND_net), .O(register_d[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_3 (.I(GND_net), .O(register_d[3]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_2 (.I(GND_net), .O(register_d[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_1 (.I(GND_net), .O(register_d[1]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB register_d_pad_0 (.I(GND_net), .O(register_d[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(30[4:14])
    OB output_pad_7 (.I(GND_net), .O(\output [7]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_6 (.I(GND_net), .O(\output [6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_5 (.I(GND_net), .O(\output [5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_4 (.I(GND_net), .O(\output [4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_3 (.I(GND_net), .O(\output [3]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_2 (.I(GND_net), .O(\output [2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_1 (.I(GND_net), .O(\output [1]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OB output_pad_0 (.I(GND_net), .O(\output [0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(32[4:10])
    OBZ segments_pad_7 (.I(segments_7__N_82), .T(segments_7__N_90), .O(segments[7]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_6 (.I(segments_7__N_82), .T(segments_7__N_90), .O(segments[6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_5 (.I(segments_7__N_84), .T(segments_7__N_90), .O(segments[5]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_4 (.I(segments_7__N_85), .T(segments_7__N_90), .O(segments[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_3 (.I(segments_7__N_86), .T(segments_7__N_90), .O(segments[3]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_2 (.I(segments_7__N_87), .T(segments_7__N_90), .O(segments[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_1 (.I(segments_7__N_88), .T(segments_7__N_90), .O(segments[1]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OBZ segments_pad_0 (.I(segments_7__N_89), .T(segments_7__N_90), .O(segments[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[25:33])
    OB digits_pad_3 (.I(digits_c_3), .O(digits[3]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(34[4:10])
    OB digits_pad_2 (.I(digits_c_2), .O(digits[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(34[4:10])
    OB digits_pad_1 (.I(digits_c_1), .O(digits[1]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(34[4:10])
    OB digits_pad_0 (.I(digits_c_0), .O(digits[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(34[4:10])
    IB trigger_ah_pad (.I(trigger_ah), .O(trigger_ah_c));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(24[4:14])
    IB selector_pad_2 (.I(selector[2]), .O(selector_c_2));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(27[4:12])
    IB selector_pad_1 (.I(selector[1]), .O(selector_c_1));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(27[4:12])
    IB selector_pad_0 (.I(selector[0]), .O(selector_c_0));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(27[4:12])
    FD1S3AX unit_mux_147 (.D(digit2_7__N_18[7]), .CK(triggerh_db), .Q(digit3_7__N_26[2])) /* synthesis lse_init_val=0 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(137[3] 139[10])
    defparam unit_mux_147.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    Debouncer debouncing1 (.clk_c(clk_c), .trigger_ah_c(trigger_ah_c), .GND_net(GND_net), 
            .triggerh_db(triggerh_db));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(132[15:24])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module DisplayDriver
//

module DisplayDriver (clk_c, digits_c_0, n300, GND_net, digits_c_3, 
            digits_c_1, digits_c_2, \digit0[4] , \digit0[5] );
    input clk_c;
    output digits_c_0;
    output [7:0]n300;
    input GND_net;
    output digits_c_3;
    output digits_c_1;
    output digits_c_2;
    input \digit0[4] ;
    input \digit0[5] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(23[4:7])
    wire [12:0]n100;
    
    wire clk_c_enable_4;
    wire [12:0]n57;
    
    wire n746, n747, n590;
    wire [18:0]count;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(37[12:17])
    
    wire n589, n373, n743, n588, n587, n586, n585, n744, n704, 
        n706, n750, n749, n593, n598, n707;
    
    FD1S3IX count_204_205__i0 (.D(n57[0]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i0.GSR = "ENABLED";
    PFUMX i590 (.BLUT(n746), .ALUT(n747), .C0(digits_c_0), .Z(n300[5]));
    CCU2D count_204_205_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n590), .S0(n57[11]), .S1(n57[12]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_13.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_13.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_13.INJECT1_0 = "NO";
    defparam count_204_205_add_4_13.INJECT1_1 = "NO";
    FD1P3AY digits_tmp_i0 (.D(digits_c_3), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(digits_c_0)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=31, LSE_LLINE=162, LSE_RLINE=162 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(39[3] 46[10])
    defparam digits_tmp_i0.GSR = "ENABLED";
    CCU2D count_204_205_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n589), .COUT(n590), .S0(n57[9]), .S1(n57[10]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_11.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_11.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_11.INJECT1_0 = "NO";
    defparam count_204_205_add_4_11.INJECT1_1 = "NO";
    FD1P3AX digits_tmp_i1 (.D(digits_c_0), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(digits_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=31, LSE_LLINE=162, LSE_RLINE=162 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(39[3] 46[10])
    defparam digits_tmp_i1.GSR = "ENABLED";
    FD1P3AX digits_tmp_i2 (.D(digits_c_1), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(digits_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=31, LSE_LLINE=162, LSE_RLINE=162 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(39[3] 46[10])
    defparam digits_tmp_i2.GSR = "ENABLED";
    FD1P3AX digits_tmp_i3 (.D(digits_c_2), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(digits_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=18, LSE_RCOL=31, LSE_LLINE=162, LSE_RLINE=162 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(39[3] 46[10])
    defparam digits_tmp_i3.GSR = "ENABLED";
    FD1S3IX count_204_205__i12 (.D(n57[12]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i12.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(digits_c_3), .B(n373), .C(digits_c_1), .Z(n300[7])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    FD1S3IX count_204_205__i11 (.D(n57[11]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i11.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut (.A(digits_c_0), .B(digits_c_1), .C(digits_c_3), 
         .D(digits_c_2), .Z(n743)) /* synthesis lut_function=(!(A+(B (C+(D))+!B ((D)+!C)))) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[2] 54[27])
    defparam i1_4_lut_else_4_lut.init = 16'h0014;
    FD1S3IX count_204_205__i10 (.D(n57[10]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i10.GSR = "ENABLED";
    FD1S3IX count_204_205__i9 (.D(n57[9]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i9.GSR = "ENABLED";
    FD1S3IX count_204_205__i8 (.D(n57[8]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i8.GSR = "ENABLED";
    FD1S3IX count_204_205__i7 (.D(n57[7]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i7.GSR = "ENABLED";
    FD1S3IX count_204_205__i6 (.D(n57[6]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i6.GSR = "ENABLED";
    FD1S3IX count_204_205__i5 (.D(n57[5]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i5.GSR = "ENABLED";
    FD1S3IX count_204_205__i4 (.D(n57[4]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i4.GSR = "ENABLED";
    FD1S3IX count_204_205__i3 (.D(n57[3]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i3.GSR = "ENABLED";
    FD1S3IX count_204_205__i2 (.D(n57[2]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(n100[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i2.GSR = "ENABLED";
    FD1S3IX count_204_205__i1 (.D(n57[1]), .CK(clk_c), .CD(clk_c_enable_4), 
            .Q(n100[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205__i1.GSR = "ENABLED";
    CCU2D count_204_205_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n588), .COUT(n589), .S0(n57[7]), .S1(n57[8]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_9.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_9.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_9.INJECT1_0 = "NO";
    defparam count_204_205_add_4_9.INJECT1_1 = "NO";
    CCU2D count_204_205_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n587), .COUT(n588), .S0(n57[5]), .S1(n57[6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_7.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_7.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_7.INJECT1_0 = "NO";
    defparam count_204_205_add_4_7.INJECT1_1 = "NO";
    CCU2D count_204_205_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n586), .COUT(n587), .S0(n57[3]), .S1(n57[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_5.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_5.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_5.INJECT1_0 = "NO";
    defparam count_204_205_add_4_5.INJECT1_1 = "NO";
    CCU2D count_204_205_add_4_3 (.A0(n100[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n585), .COUT(n586), .S0(n57[1]), .S1(n57[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_3.INIT0 = 16'hfaaa;
    defparam count_204_205_add_4_3.INIT1 = 16'hfaaa;
    defparam count_204_205_add_4_3.INJECT1_0 = "NO";
    defparam count_204_205_add_4_3.INJECT1_1 = "NO";
    CCU2D count_204_205_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n585), .S1(n57[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(41[14:19])
    defparam count_204_205_add_4_1.INIT0 = 16'hF000;
    defparam count_204_205_add_4_1.INIT1 = 16'h0555;
    defparam count_204_205_add_4_1.INJECT1_0 = "NO";
    defparam count_204_205_add_4_1.INJECT1_1 = "NO";
    PFUMX i588 (.BLUT(n743), .ALUT(n744), .C0(\digit0[4] ), .Z(n300[1]));
    LUT4 n710_bdd_4_lut_then_4_lut (.A(\digit0[5] ), .B(digits_c_3), .C(digits_c_2), 
         .D(digits_c_1), .Z(n747)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam n710_bdd_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i557_3_lut_4_lut (.A(digits_c_2), .B(digits_c_1), .C(digits_c_3), 
         .D(digits_c_0), .Z(n300[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i557_3_lut_4_lut.init = 16'h0010;
    PFUMX i563 (.BLUT(n704), .ALUT(n706), .C0(digits_c_3), .Z(n300[3]));
    LUT4 n700_bdd_4_lut_then_4_lut (.A(digits_c_0), .B(digits_c_1), .C(digits_c_2), 
         .D(\digit0[5] ), .Z(n750)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n700_bdd_4_lut_then_4_lut.init = 16'h0100;
    LUT4 n700_bdd_4_lut_else_4_lut (.A(digits_c_0), .B(digits_c_1), .C(digits_c_2), 
         .D(\digit0[4] ), .Z(n749)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam n700_bdd_4_lut_else_4_lut.init = 16'h1202;
    LUT4 i1_4_lut_then_4_lut (.A(digits_c_0), .B(digits_c_1), .C(digits_c_3), 
         .D(digits_c_2), .Z(n744)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[2] 54[27])
    defparam i1_4_lut_then_4_lut.init = 16'h0114;
    LUT4 digit0_4__bdd_3_lut_577 (.A(digits_c_2), .B(digits_c_0), .C(digits_c_1), 
         .Z(n706)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam digit0_4__bdd_3_lut_577.init = 16'h0101;
    LUT4 i455_4_lut (.A(count[11]), .B(count[12]), .C(n593), .D(count[10]), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i455_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut (.A(n598), .B(count[7]), .C(count[9]), .D(count[8]), 
         .Z(n593)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 digits_c_3_bdd_4_lut (.A(digits_c_3), .B(digits_c_2), .C(digits_c_0), 
         .D(digits_c_1), .Z(n300[6])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D)))) */ ;
    defparam digits_c_3_bdd_4_lut.init = 16'hfee9;
    LUT4 i3_4_lut_adj_3 (.A(count[3]), .B(count[4]), .C(count[6]), .D(count[5]), 
         .Z(n598)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_3.init = 16'hfffe;
    LUT4 i261_3_lut_4_lut_4_lut (.A(\digit0[5] ), .B(digits_c_0), .C(digits_c_2), 
         .D(\digit0[4] ), .Z(n373)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/display_driver.vhd(49[2] 54[27])
    defparam i261_3_lut_4_lut_4_lut.init = 16'h3808;
    LUT4 digit0_4__bdd_4_lut_572 (.A(\digit0[4] ), .B(digits_c_2), .C(digits_c_0), 
         .D(digits_c_1), .Z(n707)) /* synthesis lut_function=(!((B (C+(D))+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam digit0_4__bdd_4_lut_572.init = 16'h0228;
    LUT4 n710_bdd_4_lut_else_4_lut (.A(\digit0[4] ), .B(digits_c_3), .C(digits_c_2), 
         .D(digits_c_1), .Z(n746)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam n710_bdd_4_lut_else_4_lut.init = 16'h0220;
    PFUMX i565 (.BLUT(n707), .ALUT(n706), .C0(digits_c_3), .Z(n300[4]));
    LUT4 digits_c_3_bdd_4_lut_571 (.A(\digit0[5] ), .B(digits_c_2), .C(digits_c_0), 
         .D(digits_c_1), .Z(n704)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B+(C (D)+!C !(D))))) */ ;
    defparam digits_c_3_bdd_4_lut_571.init = 16'h0338;
    PFUMX i592 (.BLUT(n749), .ALUT(n750), .C0(digits_c_3), .Z(n300[2]));
    
endmodule
//
// Verilog Description of module \OSCH("53.20")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Debouncer
//

module Debouncer (clk_c, trigger_ah_c, GND_net, triggerh_db);
    input clk_c;
    input trigger_ah_c;
    input GND_net;
    output triggerh_db;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(23[4:7])
    wire triggerh_db /* synthesis is_clock=1, SET_AS_NETWORK=triggerh_db */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/top.vhd(119[9:20])
    wire [1:0]inff;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(32[9:13])
    wire [20:0]count;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(33[9:14])
    
    wire n6, n596, n7, n8, n664, clk_c_enable_26, count_20__N_78;
    wire [20:0]n1;
    
    wire n583, n582, n670, clk_c_enable_7, n581, n580, n579, n10_adj_134, 
        n578, n577, n576, n575, n574;
    
    FD1S3AX inff_i0 (.D(trigger_ah_c), .CK(clk_c), .Q(inff[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam inff_i0.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(count[7]), .B(count[9]), .C(count[8]), .D(n6), 
         .Z(n596)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i535_4_lut (.A(count[15]), .B(n7), .C(count[19]), .D(n8), .Z(n664)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i535_4_lut.init = 16'hfefa;
    FD1P3IX count__i0 (.D(n1[0]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i0.GSR = "ENABLED";
    FD1S3AX inff_i1 (.D(inff[0]), .CK(clk_c), .Q(inff[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam inff_i1.GSR = "ENABLED";
    FD1P3IX count__i1 (.D(n1[1]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i1.GSR = "ENABLED";
    CCU2D add_8_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n583), .S0(n1[19]), .S1(n1[20]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_21.INIT0 = 16'h5aaa;
    defparam add_8_21.INIT1 = 16'h5aaa;
    defparam add_8_21.INJECT1_0 = "NO";
    defparam add_8_21.INJECT1_1 = "NO";
    CCU2D add_8_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n582), .COUT(n583), .S0(n1[17]), .S1(n1[18]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h5aaa;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    LUT4 i373_1_lut_4_lut (.A(count_20__N_78), .B(n664), .C(count[20]), 
         .D(n670), .Z(clk_c_enable_7)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam i373_1_lut_4_lut.init = 16'h5040;
    CCU2D add_8_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n581), .COUT(n582), .S0(n1[15]), .S1(n1[16]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    LUT4 inff_0__I_0_2_lut (.A(inff[0]), .B(inff[1]), .Z(count_20__N_78)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(42[8:26])
    defparam inff_0__I_0_2_lut.init = 16'h6666;
    FD1P3AX debounced_tmp_19 (.D(inff[1]), .SP(clk_c_enable_7), .CK(clk_c), 
            .Q(triggerh_db));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam debounced_tmp_19.GSR = "ENABLED";
    CCU2D add_8_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n580), .COUT(n581), .S0(n1[13]), .S1(n1[14]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_8 (.A(count_20__N_78), .B(n664), .C(count[20]), 
         .D(n670), .Z(clk_c_enable_26)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_rep_8.init = 16'hafbf;
    CCU2D add_8_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n579), .COUT(n580), .S0(n1[11]), .S1(n1[12]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    LUT4 i541_4_lut (.A(count[14]), .B(count[16]), .C(count[17]), .D(count[18]), 
         .Z(n670)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i541_4_lut.init = 16'hfffe;
    FD1P3IX count__i2 (.D(n1[2]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n1[3]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n1[4]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n1[5]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n1[6]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n1[7]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n1[8]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n1[9]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n1[10]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n1[11]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n1[12]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i12.GSR = "ENABLED";
    FD1P3IX count__i13 (.D(n1[13]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i13.GSR = "ENABLED";
    FD1P3IX count__i14 (.D(n1[14]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i14.GSR = "ENABLED";
    FD1P3IX count__i15 (.D(n1[15]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i15.GSR = "ENABLED";
    FD1P3IX count__i16 (.D(n1[16]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i16.GSR = "ENABLED";
    FD1P3IX count__i17 (.D(n1[17]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i17.GSR = "ENABLED";
    FD1P3IX count__i18 (.D(n1[18]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i18.GSR = "ENABLED";
    FD1P3IX count__i19 (.D(n1[19]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i19.GSR = "ENABLED";
    FD1P3IX count__i20 (.D(n1[20]), .SP(clk_c_enable_26), .CD(count_20__N_78), 
            .CK(clk_c), .Q(count[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(40[3] 49[10])
    defparam count__i20.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(count[1]), .B(count[6]), .C(n10_adj_134), .D(count[3]), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i4_4_lut_adj_2 (.A(count[0]), .B(count[4]), .C(count[2]), .D(count[5]), 
         .Z(n10_adj_134)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_2.init = 16'h8000;
    CCU2D add_8_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n578), .COUT(n579), .S0(n1[9]), .S1(n1[10]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    CCU2D add_8_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n577), 
          .COUT(n578), .S0(n1[7]), .S1(n1[8]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(count[11]), .B(count[12]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    CCU2D add_8_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n576), 
          .COUT(n577), .S0(n1[5]), .S1(n1[6]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    LUT4 i3_3_lut (.A(count[13]), .B(n596), .C(count[10]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    CCU2D add_8_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n575), 
          .COUT(n576), .S0(n1[3]), .S1(n1[4]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    CCU2D add_8_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n574), 
          .COUT(n575), .S0(n1[1]), .S1(n1[2]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n574), 
          .S1(n1[0]));   // d:/userdata/bruno.desktop-n6s9qeb/documents/digital systems/diamond/alu/impl1/source/components/debouncer.vhd(45[14:19])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h5555;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    
endmodule
