format long
a=2 ;%��ʼֵ
dx=1e-4; %����ֵ 
i=0; %��������
h=1/2*(1+cot(a)); % �仯
fprintf('��ʼֵ%f,�ݲ�ֵ%f\n',a,dx')
% if exp(-a)*cos(-a)*exp(-b)*cos(-b)<0
    while abs(h)>dx
        a=a+h;
        h=1/2*(1+cot(a));
        i=i+1;
    end
fa=exp(-a)*cos(a);
fprintf('������%d�Σ���Ϊ%f,����ֵ%f,����%f\n',i,a,fa,-exp(-a)*[cos(a)+sin(a)])
%����ֵ������Ϊ