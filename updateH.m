function [Hx,Hy,Hz,Psi_hyz_zn,Psi_hyz_zp,Psi_hzx_xn,Psi_hyx_xp,Psi_hzy_yn,Psi_hxy_yp] = updateH(Hx,Hy,Hz,Ex,Ey,Ez,ex_2,ex_22,ex_3,ex_32,ey_1,ey_12,ey_3,ey_32,ez_1,ez_12,ez_2,ez_22...
    ,Psi_hyx_xn,cpml_b_mx_xn,cpml_b1_mx_xn,cpml_a_mx_xn,cpml_a1_mx_xn,Psi_hzx_xn,...
    CPsi_hyx_xn,CPsi_hzx_xn,Psi_hyx_xp,cpml_b_mx_xp,cpml_b1_mx_xp,cpml_a_mx_xp...
    ,cpml_a1_mx_xp,CPsi_hyx_xp,CPsi_hzx_xp,Psi_hzx_xp,Psi_hxy_yn,cpml_b_my_yn,...
    cpml_b1_my_yn,cpml_a_my_yn,cpml_a1_my_yn,Psi_hzy_yn,CPsi_hxy_yn,CPsi_hzy_yn...
    ,Psi_hxy_yp,cpml_b_my_yp,cpml_b1_my_yp,cpml_a_my_yp,cpml_a1_my_yp,Psi_hzy_yp,...
    CPsi_hxy_yp,CPsi_hzy_yp,Psi_hxz_zn,cpml_b_mz_zn,cpml_b1_mz_zn,cpml_a_mz_zn,cpml_a1_mz_zn,Psi_hyz_zn...
    ,CPsi_hxz_zn,CPsi_hyz_zn,Psi_hyz_zp,cpml_b_mz_zp,cpml_b1_mz_zp,cpml_a_mz_zp,cpml_a1_mz_zp,Psi_hxz_zp,...
    CPsi_hxz_zp,CPsi_hyz_zp,Chxh,Chxey,Chxez,Chyh,Chyez,Chyex,Chzh,Chzex,Chzey,dt,omega,i,dy,dx,...
    sh_1,sh_2,sh_3)

Psi_hyx_xn =cpml_b_mx_xn.*Psi_hyx_xn+cpml_a_mx_xn.*...
    (ez_12 -ez_1);
Psi_hzx_xn=cpml_b1_mx_xn.*Psi_hzx_xn+cpml_a1_mx_xn.*...
    ( ey_12  - ey_1);
Hy=Hy+CPsi_hyx_xn.*Psi_hyx_xn;
Hz=Hz+CPsi_hzx_xn.*Psi_hzx_xn;


Hx = ((Chxh.* Hx)+(Chxey.*(ey_32-ey_3 ))+...
    (Chxez.*(ez_22-ez_2))).*sh_1;

% ************************************
% ************************************
% Contact me to see the complete code.
% Shayan Dodge 
% dodgeshayan@gmail.com
% ************************************
% ************************************
end
