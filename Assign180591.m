prompt = 'If the Equation is polynomial then type Y otherwise N ';
str = input(prompt,'s');
% When the f(x) is not a polynomial
if str=='N'
    prompt='Type 1 for Bisection method\nType 2 for False-position method\nType 3 for Fixed-point method\nType 4 for Newton-raphson\nType 5 for Secant method\n';
    choice = input(prompt);
    
    if choice==1
        
        % Function scanning
        x=sym('x');
        func=input('Enter function as function of x:: ');
        y=inline(func);
        
        % Intial data
        str1 = input('Enter the first starting point:: ','s');
        str2=  input('Enter the second starting point:: ','s');
        x1 = str2num(str1);
        x2 = str2num(str2);
        x3=x1;
        x4=x2;
        %convergence criteria scanning
        str3 = input('Enter convergence criterion for relative approximate errrors:: ','s');
        str4 = input('Enter covergence criteria for the function value:: ','s');
        str5=  input('Enter maximum iteration number:: ','s');
        sc1 = str2num(str3);
        sc2 = str2num(str4);
        sc3 = str2num(str5);
        
        
        %Creating array to stote data
        xval=zeros(1,10000);
        yval=zeros(1,10000);
        iter=zeros(1,10000);
        err=zeros(1,10000);
        xval(1)=x1;
        yval(1)=y(x1);
        
        %start iterating
        for i=1:sc3
            temp=(x1+x2)/2;
            if y(temp)*y(x1) <0
                x2=temp;
            end
            if y(temp)*y(x2) <0
                x1=temp;
            end
            
            result=temp;
            xval(i+1)=temp;
            yval(i+1)=y(temp);
            
            
            iter(i)=i;
            err(i)=abs(((xval(i+1)-xval(i))*100)/xval(i+1));
           
            
            if abs(err(i))<=sc1
                disp('Convergence criterion for relative approximate error achieved')
                break
            end
            
            if abs(y(result))<=sc2
                disp('Convergence criterion for Function achieved')
                break
            end
            if i == sc3
                disp('Maximum Iteration achieved')
            end
        end
        fprintf('Root of f(x) is : %f', result)
        x=linspace(x3-5,x4+5,200);
        figure(1)
        plot(x,y(x))
        title('Graph:f(x) vs x')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(iter,err,'r')
        title('Graph:Error vs iteration')
        ylabel('Error')
        xlabel('Iteration Number')

        
    end
    
    if choice==2
        
        % Function scanning
        x=sym('x');
        func=input('Enter function as function of x:: ');
        y=inline(func);
        
        % Intial data
        str1 = input('Enter the first starting point:: ','s');
        str2=  input('Enter the second starting point:: ','s');
        x1 = str2num(str1);
        x2 = str2num(str2);
        x3=x1;
        x4=x2;
        %convergence criteria scanning
        str3 = input('Enter convergence criterion for relative approximate errrors:: ','s');
        str4 = input('Enter covergence criteria for the function value:: ','s');
        str5=  input('Enter maximum iteration number:: ','s');
        sc1 = str2num(str3);
        sc2 = str2num(str4);
        sc3 = str2num(str5);
        
        
        %Creating array to stote data
        xval=zeros(1,10000);
        yval=zeros(1,10000);
        iter=zeros(1,10000);
        err=zeros(1,10000);
        xval(1)=x1;
        yval(1)=y(x1);
        
        %start iterating
        for i=1:sc3
            temp=x1-(y(x1)*(x2-x1)/(y(x2)-y(x1)));
            if y(temp)*y(x1) <0
                x2=temp;
            end
            if y(temp)*y(x2) <0
                x1=temp;
            end
            
            result=temp;
            xval(i+1)=temp;
            yval(i+1)=y(temp);
            
            
            iter(i)=i;
            err(i)=abs(((xval(i+1)-xval(i))*100)/xval(i+1));
           
            
            if abs(err(i))<=sc1
                disp('Convergence criterion for relative approximate error achieved')
                break
            end
            
            if abs(y(result))<=sc2
                disp('Convergence criterion for Function achieved')
                break
            end
            if i == sc3
                disp('Maximum Iteration achieved')
            end
        end
        fprintf('Root of f(x) is : %f', result)
        x=linspace(x3-5,x4+5,100);
        figure(1)
        plot(x,y(x))
        title('Graph:f(x) vs x')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(iter,err,'r')
        title('Graph:Error vs iteration')
        ylabel('Error')
        xlabel('Iteration Number')
        
        
    end
    
    
    if choice==3
        
        % Function scanning
        x=sym('x');
        func=input('Enter g(x) such that x=g(x):: ');
        y=inline(func);
        
        % Intial data
        str1 = input('Enter the starting point:: ','s');
        x1 = str2num(str1);
        x3=x1;       % stored to use later in the program
        
        %convergence criteria scanning
        str3 = input('Enter convergence criterion for relative approximate errrors(%):: ','s');
        str4 = input('Enter covergence criteria for the function value(%):: ','s');
        str5=  input('Enter maximum iteration number:: ','s');
        sc1 = str2num(str3);
        sc2 = str2num(str4);
        sc3 = str2num(str5);
        
        
        %Creating array to stote data
        xval=zeros(1,10000);
        yval=zeros(1,10000);
        iter=zeros(1,10000);
        err=zeros(1,10000);
        xval(1)=x1;
        yval(1)=y(x1);
        
        %start iterating
        for i=1:sc3
            
            temp=y(x1);
            x1=temp;
            
            result=temp;
            xval(i+1)=temp;
            yval(i+1)=y(temp);
            
            
            iter(i)=i;
            err(i)=abs(((xval(i+1)-xval(i))*100)/xval(i+1));
           
            
            if abs(err(i))<=sc1
                disp('Convergence criterion for relative approximate error')
                break
            end
            
            if abs(y(result)-temp)<=sc2
                disp('Convergence criterion for Function')
                break
            end
            if i == sc3
                disp('Maximum Iteration Reached')
            end
        end
        fprintf('Root of f(x) is : %f', result)
        x=linspace(x3-5,x3+5,200);
        figure(1)
        plot(x,(x-y(x)))
        title('Graph:f(x) vs x')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(iter,err,'r')
        title('Graph:Error vs iteration')
        ylabel('Error')
        xlabel('Iteration Number')
        
        
    end
    
    if choice==4
        
        % Function scanning
        x=sym('x');
        func1=input('Enter function f(x):: ');
        y1=inline(func1);
        
        x=sym('x');
        func2=input('Enter function f prime:: ');
        y2=inline(func2);
        
        % Intial data
        str1 = input('Enter the starting point:: ','s');
        x1 = str2num(str1);
        x3=x1;       % stored to use later in the program
        
        %convergence criteria scanning
        str3 = input('Enter convergence criterion for relative approximate errrors(%):: ','s');
        str4 = input('Enter covergence criteria for the function value(%):: ','s');
        str5=  input('Enter maximum iteration number:: ','s');
        sc1 = str2num(str3);
        sc2 = str2num(str4);
        sc3 = str2num(str5);
        
        
        %Creating array to stote data
        xval=zeros(1,10000);
        yval=zeros(1,10000);
        iter=zeros(1,10000);
        err=zeros(1,10000);
        xval(1)=x1;
        yval(1)=y(x1);
        
        %start iterating
        for i=1:sc3
            
            temp=x1-(y1(x1)/y2(x1));
            x1=temp;
            
            result=temp;
            xval(i+1)=temp;
            yval(i+1)=y(temp);
            
            
            iter(i)=i;
            err(i)=abs(((xval(i+1)-xval(i))*100)/xval(i+1));
           
            
            if abs(err(i))<=sc1
                disp('Convergence criterion for relative approximate error')
                break
            end
            
            if abs(y1(result))<=sc2
                disp('Convergence criterion for Function')
                break
            end
            if i == sc3
                disp('Maximum Iteration Reached')
            end
        end
        fprintf('Root is : %f', result)
        x=linspace(x3-5,x3+5,200);
        figure(1)
        plot(x,y1(x))
        title('Graph:f(x) vs x')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(iter,err,'b')
        title('Graph:Error vs iteration')
        ylabel('Error')
        xlabel('Iteration Number')
        
        
    end
    
    if choice==5
        
        % Function scanning
        x=sym('x');
        func=input('Enter function as function of x:: ');
        y=inline(func);
        
        % Intial data
        str1 = input('Enter the first starting point:: ','s');
        str2=  input('Enter the second starting point:: ','s');
        x1 = str2num(str1);
        x2 = str2num(str2);
        x3=x1;
        x4=x2;
        %convergence criteria scanning
        str3 = input('Enter convergence criterion for relative approximate errrors:: ','s');
        str4 = input('Enter covergence criteria for the function value:: ','s');
        str5=  input('Enter maximum iteration number:: ','s');
        sc1 = str2num(str3);
        sc2 = str2num(str4);
        sc3 = str2num(str5);
        
        
        %Creating array to stote data
        xval=zeros(1,10000);
        yval=zeros(1,10000);
        iter=zeros(1,10000);
        err=zeros(1,10000);
        xval(1)=x1;
        yval(1)=y(x1);
        
        %start iterating
        for i=1:sc3
            temp=x2-(y(x2)*(x2-x1)/(y(x2)-y(x1)));
            x1=x2;
            x2=temp;
            
            result=temp;
            xval(i+1)=temp;
            yval(i+1)=y(temp);
            
            
            iter(i)=i;
            err(i)=abs(((xval(i+1)-xval(i))*100)/xval(i+1));
           
            
            if abs(err(i))<=sc1
                disp('Convergence criterion for relative approximate error achieved')
                break
            end
            
            if abs(y(result))<=sc2
                disp('Convergence criterion for Function achieved')
                break
            end
            if i == sc3
                disp('Maximum Iteration Number achieved')
            end
        end
        fprintf('Root of f(x) is : %f', result)
        x=linspace(x3-5,x4+5,100);
        figure(1)
        plot(x,y(x))
        title('Graph:f(x) vs x')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(iter,err,'b')
        title('Graph:Error vs iteration')
        ylabel('Error')
        xlabel('Iteration Number')
        
        
    end
    
    
    
end

% When the f(x) is a polynomial


if str=='Y'
    %Scanning polynomial
    order=input('What is the order of the equation?: ');
    check = order;
    polyn = zeros(1,order + 1);
    for i = 1:order+1
        polyn(i)=input(['Enter vector for polynomial in order of a0,a1,a2...in a0+a1*x+a2*x^2......::   ']);
    end
    
    %Asking for the method to solve
    method=input('Type 1 for Muller method\nType 2 for Bairstow method\n');


if method==1
        x(1)=input('Enter x0:: ');
        x(2)=input('Enter x1:: ');
        x(3)=input('Enter x2:: ');
        
        sc1 = input('Enter convergence criterion for relative approximate error:: ');
        sc2 = input('Enter convergence criterion for function value:: ');
        sc3 = input('Enter the number of Maximum iterations:: ');
        
        
        pol=flip(polyn);
        val1 = polyval(pol,x(1));
        val2 = polyval(pol,x(2));
        val3 = polyval(pol,x(3));
        
        k=zeros(1,1000);
        error = zeros(1,1000);
        for i = 3:sc3+3
            k(i-2) = i - 2;
            divdif1 = (polyval(pol,x(i)) - polyval(pol,x(i-1)))/(x(i) - x(i-1));
            
            divdif2 = (polyval(pol,x(i-1)) - polyval(pol,x(i-2)))/(x(i-1) - x(i-2));
            
            divdif3 = (polyval(pol,x(i)) - polyval(pol,x(i-2)))/(x(i) - x(i-2));
            
            divdif4 = (divdif1 - divdif2)/(x(i) - x(i-2));
            
            c(i-2) = polyval(pol,x(i));
            b(i-2) = divdif1 + (x(i) - x(i-1))*divdif4;
            a(i-2) = divdif4;
            
            x(i+1)= x(i) - 2*c(i-2)/(b(i-2)+(b(i-2)^2 - 4*a(i-2)*c(i-2))^1/2);
            
            error(i-2) = abs((x(i+1) - x(i))/x(i+1));
            if  error(i-2) <= sc1
                disp('Convergence criterion for relative approximate error acheived')
                fprintf('Root of polynomial is: %f', x(i+1));
                break
            end
            
            if abs(polyval(pol,x(i+1)))<= sc2
                disp('Convergence criterion for function value acheived')
                fprintf('Root of poplynomial is: %f' ,x(i+1));
                break
            end
            
            if i == sc3 + 3
                disp('Maximum Iteration achieved')
            end
        end
        x=linspace(x(i+1)-2,x(i+1)+2,200);
        figure(1)
        plot(x,polyval(pol,x))
        title('f(x) vs x Graph')
        ylabel('f(x)')
        xlabel('x')
        grid on
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(k,error,'r')
        title('Error vs i Graph')
        ylabel('Error')
        xlabel('Iteration Number')
        
end
    if method ==2
        r=input('Enter value of r::  ');
        check1 = r;
        s=input('Enter value of s::  ');
        check2 = s;
        sc1 = input('Convergence criterion for relative approximate error::  ');
        sc2 = input('Convergence criterion for function value::  ');
        sc3 = input('Maximum iteration number:: ');
        
       
        original = flip(polyn);
        for j = 1:sc3
            f=flip(polyn);
            if order > 2
                b = zeros(1,order + 4);
                c = zeros(1,order + 4);
                b(order+1)=polyn(order+1);
                b(order) = polyn(order) + r*b(order + 1);
                for i =order-1:-1:1
                    b(i) = polyn(i) +r*b(i+1) + s*b(i+2);
                end
                
                c(order+1)=b(order+1);
                c(order) = b(order) + r*c(order + 1);
                for i =order-1:-1:1
                    c(i) = b(i) +r*c(i+1) + s*c(i+2);
                end
                
                syms r1 s1
                eqn1 = c(2)*r1 + c(3)*s1 == -b(1);
                eqn2 = c(3)*r1 + c(4)*s1 == -b(2);
                
                sol = solve([eqn1, eqn2], [r1, s1]);
                delr = vpa(sol.r1);
                delr = double(delr);
                dels = vpa(sol.s1);
                dels = double(dels);
                
                polyroot = [1, -r, -s];
                r= r+ delr;
                s= s+ dels;
                
                root1 = 0.5*(r + sqrt(r*r + 4*s));
                root2 = 0.5*(r - sqrt(r*r + 4*s));
                a(j) = j;
                errs(j)=abs(dels/s);
                errr(j)=abs(delr/r);
                
                me = polyval(f,root1);
                
                if i == sc3
                    disp('Maximum Iteration achieved')
                    break
                end
                
                % if polyval(f,root1) == 0 %&& polyval(f,root2) == 0
                %
                %end
                
                if errr(j)<=sc1 && errs(j)<=sc1 && b(1)<=sc2 && b(2)<=sc2
                    [q,rem] = deconv(f,polyroot);
                    polyn = flip(q);
                    if order == check
                        fprintf('Roots of the polynomial are :')
                    end
                    fprintf(' %f %f ', root1, root2)
                    r= check1;
                    s= check2;
                    order = order - 2;
                end
                if k == check
                end
            end
            if order == 2
                root1 = (-polyn(2) + sqrt(polyn(2)^2 - 4*polyn(3)*polyn(1)))/(2*polyn(3));
                root2 = (-polyn(2) + sqrt(polyn(2)^2 - 4*polyn(3)*polyn(1)))/(2*polyn(3));
                fprintf(' %f %f ', root1, root2)
                order = order - 2;
                break
            end
            if order == 1
                root1 = -polyn(1)/polyn(2);
                fprintf(' %f ', root1)
                break
            end
            if order <= 0
                break;
            end
        end
       
        x=linspace(0,5,100);
        figure(1)
        plot(x,polyval(original,x));grid on
        title('f(x) vs x Graph')
        ylabel('f(x)')
        xlabel('x')
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        
        figure(2)
        plot(errr,'r');grid on
        title('Graph:Error (r) vs i')
        ylabel('Error (r)')
        xlabel('Iteration Number')
        
        figure(3)
        plot(errs,'r');grid on
        title(' Graph: Error(s) vs i')
        ylabel('Error(s)')
        xlabel('Iteration Number')
    end


end