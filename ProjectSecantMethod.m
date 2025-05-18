% This program can solve any given equation covering Secant Method.
% Find the roots of using Secant Method 
% func --> function is taken by user 
% maxerr --> Maximum Error in finding Root 
 
i=0;
maxiter = 100; % max number of iteration before get the answer 
e1=input('Enter f(x)=','s');
f=inline(e1);
xi_1 = input('Enter Lower Limit: '); 
xi = input('Enter Upper Limit: '); 
maxerr = input('Enter Maximum Error: '); 
 
xr = (xi_1*f(xi) - xi*f(xi_1))/(f(xi) - f(xi_1)); 
 
disp('Iteration  xi-1       xi       xi+1        f(xi-1)     f(xi)    f(xi+1)'); 
  i=i+1;
z=[i;xi_1;xi;xr; f(xi_1);f(xi);abs(f(xr))];
    fprintf('%5d %10.5f %10.5f %10.5f %10.5f %10.5f %10.5f \n',z);
THURS_3 = 1;  
while abs(f(xr)) > maxerr 
    xi_1 = xi; 
    xi = xr; 
    xr = (xi_1*f(xi) - xi*f(xi_1))/(f(xi) - f(xi_1)); 
    
      i=i+1;
     z=[i;xi_1;xi;xr; f(xi_1);f(xi);abs(f(xr))];
    fprintf('%5d %10.5f %10.5f %10.5f %10.5f %10.5f %10.5f \n',z);
     
    THURS_3 = THURS_3 + 1; 
 
    if(THURS_3 == maxiter) 
        break; 
    end 
end 
 
if THURS_3 < maxiter 
    display(['Root is x = ' num2str(xr)]); 
else 
    display('Root does not exist');  
end
