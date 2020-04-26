clc;
close all;
clear all;

I=rgb2gray(imread('OK.jpg'));
options='ABCD'; % Options
ans=''; % This string stores the options entered by the student
key='NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE '; % This string contains correct answers

x=99; % x-coordinate of first bubble
y=200; % y-coordinate of first bubble


s=37; %spacing between each bubble
sr=32; %spacing between consecutive rows


for i=1:10                               
    sy=y+(i-1)*sr;
    
       
    for j=1:4          
    sx=x+(j-1)*s;
%      disp(sx);
%      disp(sy);

     %disp(I(sy,sx));
    if((I(sy,sx)<25))        
        c(i,j)=0;
     else
        c(i,j)=1;    
    end
    
    end
end
 
    

%Same process for the other half
x=289; % x-coordinate of first bubble in other half
y=200; % y-coordinate of first bubble in other half

for i=11:20                               
    sy=y+(i-11)*sr;
    
       
    for j=1:4          
    sx=x+(j-1)*s;
%      disp(sx);
%      disp(sy);

    
      %disp(I(sy,sx));
     if((I(sy,sx)<25))
         c(i,j)=0;
    else
         c(i,j)=1;
     end
     
    
end

end
    %printing the results in the string

for i=1:20                                             
    m=0;
    for j=1:4                                          
    if(c(i,j)==0)                                     
        ans=[ans ' ' options(j)];
    else
        m=m+1;
    end
    end
    if(m==4)                                           
        ans=[ans ' NONE'];
    end
end
score=0;
disp(ans);

for i=1:20
    [token,remain]=strtok(ans);
    [ktoken,kremain]=strtok(key);
    if(token==ktoken)
        score=score+1;
    end
    ans=remain;
    key=kremain;
end
    
 disp('You have scored : ')
 disp(score);
if(score==20)
    status='pass';
else
    status='fail';
end

h = msgbox(['You scored ' num2str(score) 'marks' '    ' ' RESULT : ' status], 'Test Result');


    

