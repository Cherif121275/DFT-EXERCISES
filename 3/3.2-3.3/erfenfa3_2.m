format long
a=2 ;%���
b=3 ;%�Ҷ�
dx=1e-4; %����ֵ 
i=0; %��������
fprintf('a=%f,b=%f,�ݲ�ֵ%f\n',a,b,dx')
% if exp(-a)*cos(-a)*exp(-b)*cos(-b)<0
    while abs(a-b)>dx
    ga=-exp(-a)*[cos(a)+sin(a)];
    gb=-exp(-a)*[cos(a)+sin(a)];
    c=(a+b)/2;
    gc=-exp(-c)*[cos(c)+sin(c)];;
    if ga*gc>0
        a=c;
    else
        b=c;
    end
    i=i+1;
    end 
% else
%     
% end
fa=exp(-a)*cos(a);
fprintf('������%d�Σ���Ϊ%f,����ֵ%f,����%f\n',i,a,fa,ga)
    
    
