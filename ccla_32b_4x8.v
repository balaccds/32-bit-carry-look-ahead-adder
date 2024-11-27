module ccla_32b_4x8 (a,b,sum); 
input [31:0] a,b;
output [32:0] sum; 
wire cout4,cout8,cout12,cout16,cout20,cout24,cout28;
ccla_4b_withoutcarryinput cla1(a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],cout4,sum[3],sum[2],sum[1],sum[0]);
ccla_4b cla2(a[7],a[6],a[5],a[4],b[7],b[6],b[5],b[4],cout4,cout8,sum[7],sum[6],sum[5],sum[4]);
ccla_4b cla3(a[11],a[10],a[9],a[8],b[11],b[10],b[9],b[8],cout8,cout12,sum[11],sum[10],sum[9],sum[8]);
ccla_4b cla4(a[15],a[14],a[13],a[12],b[15],b[14],b[13],b[12],cout12,cout16,sum[15],sum[14],sum[13],sum[12]);
ccla_4b cla5(a[19],a[18],a[17],a[16],b[19],b[18],b[17],b[16],cout16,cout20,sum[19],sum[18],sum[17],sum[16]);
ccla_4b cla6(a[23],a[22],a[21],a[20],b[23],b[22],b[21],b[20],cout20,cout24,sum[23],sum[22],sum[21],sum[20]);
ccla_4b cla7(a[27],a[26],a[25],a[24],b[27],b[26],b[25],b[24],cout24,cout28,sum[27],sum[26],sum[25],sum[24]);
ccla_4b cla8(a[31],a[30],a[29],a[28],b[31],b[30],b[29],b[28],cout28,sum[32],sum[31],sum[30],sum[29],sum[28]);
endmodule


module ccla_4b_withoutcarryinput (a3,a2,a1,a0,b3,b2,b1,b0,c4,sum3,sum2,sum1,sum0);
input a3,a2,a1,a0,b3,b2,b1,b0;
output c4,sum3,sum2,sum1,sum0;
wire g3,g2,g1,g0,p3,p2,p1,c2,c3,m2,m3,m4,m6,m7,m9;
and t1(g0,a0,b0);
and t2(g1,a1,b1);
and t3(g2,a2,b2);
and t4(g3,a3,b3);
xor t5(sum0,a0,b0);
xor t6(p1,a1,b1);
xor t7(p2,a2,b2);
xor t8(p3,a3,b3);
and t9(m2,p3,p2,p1,g0);
and t10(m3,p3,p2,g1);
and t11(m4,p3,g2);
or t12(c4,m2,m3,m4,g3);
and t13(m6,p2,p1,g0);
and t14(m7,p2,g1);
or t15(c3,m6,m7,g2);
and t16(m9,p1,g0);
or t17(c2,m9,g1);
xor t18(sum1,p1,g0);
xor t19(sum2,p2,c2);
xor t20(sum3,p3,c3);
endmodule


module ccla_4b (a3,a2,a1,a0,b3,b2,b1,b0,c0,c4,sum3,sum2,sum1,sum0);
input a3,a2,a1,a0,b3,b2,b1,b0,c0;
output c4,sum3,sum2,sum1,sum0;
wire g3,g2,g1,g0,p3,p2,p1,p0,c1,c2,c3,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10;
and t1(g0,a0,b0);
and t2(g1,a1,b1);
and t3(g2,a2,b2);
and t4(g3,a3,b3);
xor t5(p0,a0,b0);
xor t6(p1,a1,b1);
xor t7(p2,a2,b2);
xor t8(p3,a3,b3);
and t9(m1,p3,p2,p1,p0,c0);
and t10(m2,p3,p2,p1,g0);
and t11(m3,p3,p2,g1);
and t12(m4,p3,g2);
or t13(c4,g3,m4,m3,m2,m1);
and t14(m5,p2,p1,p0,c0);
and t15(m6,p2,p1,g0);
and t16(m7,p2,g1);
or t17(c3,g2,m7,m6,m5);
and t18(m8,p1,p0,c0);
and t19(m9,p1,g0);
or t20(c2,g1,m9,m8);
and t21(m10,p0,c0);
or t22(c1,g0,m10);
xor t23(sum0,p0,c0);
xor t24(sum1,p1,c1);
xor t25(sum2,p2,c2);
xor t26(sum3,p3,c3);
endmodule



