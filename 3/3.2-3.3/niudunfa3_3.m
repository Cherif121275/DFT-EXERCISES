format long
a=10 ;%��ʼֵ
dx=1e-4; %����ֵ 
i=0; %��������
h=-(1+a^2)*atan(a); % �仯
fprintf('��ʼֵ%f,�ݲ�ֵ%f\n',a,dx')
% if exp(-a)*cos(-a)*exp(-b)*cos(-b)<0
    while abs(h)>dx
        a=a+h;
        h=-(1+a^2)*atan(a);
        i=i+1;
    end

fprintf('������%d�Σ���Ϊ%f,����%f\n',i,a,atan(a))
%����ֵ������Ϊ