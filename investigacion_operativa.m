function varargout = investigacion_operativa(varargin)
% INVESTIGACION_OPERATIVA MATLAB code for investigacion_operativa.fig
%      INVESTIGACION_OPERATIVA, by itself, creates a new INVESTIGACION_OPERATIVA or raises the existing
%      singleton*.
%
%      H = INVESTIGACION_OPERATIVA returns the handle to a new INVESTIGACION_OPERATIVA or the handle to
%      the existing singleton*.
%   
%      INVESTIGACION_OPERATIVA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVESTIGACION_OPERATIVA.M with the given input arguments.
%
%      INVESTIGACION_OPERATIVA('Property','Value',...) creates a new INVESTIGACION_OPERATIVA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before investigacion_operativa_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to investigacion_operativa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help investigacion_operativa

% Last Modified by GUIDE v2.5 04-Dec-2022 19:56:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @investigacion_operativa_OpeningFcn, ...
                   'gui_OutputFcn',  @investigacion_operativa_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before investigacion_operativa is made visible.
function investigacion_operativa_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to investigacion_operativa (see VARARGIN)

% Choose default command line output for investigacion_operativa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes investigacion_operativa wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = investigacion_operativa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function nro1_Callback(hObject, eventdata, handles)
% hObject    handle to nro1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nro1 as text
%        str2double(get(hObject,'String')) returns contents of nro1 as a double


% --- Executes during object creation, after setting all properties.
function nro1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nro1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nro2_Callback(hObject, eventdata, handles)
% hObject    handle to nro2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nro2 as text
%        str2double(get(hObject,'String')) returns contents of nro2 as a double


% --- Executes during object creation, after setting all properties.
function nro2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nro2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in aceptar.
function aceptar_Callback(hObject, eventdata, handles)
% hObject    handle to aceptar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v=str2double(get(handles.nro1,'String'));
r=str2double(get(handles.nro2,'String'));

i=1;
n=1;
j=1;
n1=1;

name2{r+1,1}='z';

 matriz=zeros(r+1,v+1);
 set(handles.tabla1,'data',matriz);
 for i=1:v+1
     set(handles.tabla1,'ColumnEditable',true(1,i));
    
 end
 for i=1:r
     name1{i,1}=n;
     n=n+1;
 end
 for i=1:v
     name3{1,i}=n1;
     n1=n1+1;
 end
 string(name1);
 name1{r+1,1}='demanda';
     set(handles.tabla1,'rowname',name1);
     string(name3);
     name3{1,v+1}='oferta';
     set(handles.tabla1,'columnname',name3);
 while(i<=r+1)
 for j=1:v
     
     
 end
 i=i+1;
 
 end
 


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% NWC===========>>>>North West Corner ==================>>>>esquina noroeste
%SS=============>>>> Stepping Stone
set(handles.text15,'string','TABLA DE TRANSPORTE FINAL');

matrizaux=get(handles.tabla1,'data');
[m2 n2]=size(matrizaux);
matrizaux2=zeros(m2-1,n2-1);
matrizaux3=zeros(m2,n2)
for i=1:m2-1
    j=1;
while(j<=n2-1)
    matrizaux2(i,j)=matrizaux(i,j);
j=j+1;
end
end

c=matrizaux2;
[m,n]=size(c);
%mostrando x(n)
syms X [1 m*n]
X
for i=1:m*n
vari(1,i)=string(X(1,i))
end

set(handles.tabla3,'rowname',vari)
s=matrizaux(:,n2);
d=matrizaux(m2,:);
r=0.01;% Valor extra por agregar elementos en el método de degeneración correctiva
nvar = m+n-1;

x=zeros(m+1,n+1);

s1=zeros(m,1); 

d1=zeros(1,n); 

% Suma de la demanda y la oferta
  sumd=0;
sumd1=0;
  for j=1:n
      
      sumd=sumd+d(j);
      d1(j)=d(j);
      sumd1=sumd1+d1(j);
  end


sums=0;
sums1=0;
for i=1:m
    sums=sums+s(i);
    s1(i)=s(i);
    sums1=sums1+s1(i);
end
  % Suma de la demanda y la oferta
  if sums~=sumd
      msgbox('el problema no esta balanceado','error','error');
      return
  end
            
         

     
% Se obtiene la solución factible básica inicial para el problema de transporte con la regla de la esquina noroeste



for j=1:n
  while d1(j)>0
    for i=1:m
       
           if s1(i)>0 &&  d1(j)>0
               iall=i;
               jall=j;
               break
           end
    end

    if d1(jall)>s1(iall)
       d1(jall)=d1(jall)-s1(iall);
       x(iall,jall)=s1(iall);
       s1(iall)=0;
    elseif d1(jall)<s1(iall)
        s1(iall)=s1(iall)-d1(jall);
        x(iall,jall)=d1(jall);
        d1(jall)=0;
    elseif d1(jall)==s1(iall) 
         x(iall,jall)=d1(jall);
        d1(jall)=0;
        s1(iall)=0;
       
    end
  end
end
  
 n4=1;
 for i=1:m2-1
     name5{i,1}=n4;
     n4=n4+1;
 end
 n5=1;
 for i=1:n2-1
     name6{1,i}=n5;
     n5=n5+1;
 end
 string(name5);
 name5{m2,1}='demanda';
     set(handles.tabla2,'rowname',name5);
     string(name6);
     name6{1,n2}='oferta';
     set(handles.tabla2,'columnname',name6);
 set(handles.tabla2,'data',x)
         
  %Calcular la función z de la solucion basica inicial factible
     ZNWC=0;
     for i=1:m
         for j=1:n
             if x(i,j)>0
                 ZNWC=ZNWC+x(i,j)*c(i,j);
             end
         end
     end
     set(handles.resulb,'string',ZNWC)
% número de variables no básicas 
 countnwc=0;
 for i=1:m
   for j=1:n
        if x(i,j)>0
          countnwc=countnwc+1;
        end
   end
 end

   % Comprobar la solución de degeneración
reducetant=m+n-1;
if countnwc>=reducetant
  % disp('Problema de no degeneración');
   %disp('Costo total ');
   % disp(ZNWC);
   
   degen=0;
else
     %disp('La degeneración NWC');
    %disp('Costo total');
    %disp(ZNWC);
    set(handles.resulb,'string',ZNWC);
    degen=1;
    
    
end
if degen==1
 % Corregir el problema de degeneracion
   numdegen=reducetant-countnwc;
     iterationDegen=0;
 for A=1:numdegen
     iterationDegen=iterationDegen+1;
    % Cuentar el número de la celda básica en cada fila y columna
     
    
      for j=1:n
           countcol=0;
          for i=1:m
              if x(i,j)>0
              countcol=countcol+1;
              end
          end
         x(m+1,j)=countcol;
      end
      for i=1:m
            countrow=0;
          for j=1:n
              if x(i,j)>0
              countrow=countrow+1;
              end
          end
         x(i,n+1)=countrow;
      end
     
   
    %  Se asigna agregando una en la celda entrante
    
       for j=1:n-1
           if x(m+1,j)==1
               jenter=j;
               for i=1:m+1
                   if x(i,n+1)==1
                       ienter=i;
                       break
                   end
               end
           end
       end
       if x(ienter,jenter)== 0 
          x(ienter,jenter)=r;
          break
       end
 end
 % Sumar la demanda y la oferta con r
      for j=1:n
          for i=1:m
              if x(i,j)==r
                  d(j)=d(j)+r;
              end
          end
      end
      for i=1:m
          for j=1:n
              if x(i,j)==r
                  s(i)=s(i)+r;
              end
          end
      end
 end               
 
     % la degeneración
     countxdegen=0;
   
      
     for i=1:m
         for j=1:n
             if x(i,j)>0
                 countxdegen=countxdegen+1;
                
             end
         end
     end
     
     
     if countxdegen>=reducetant;
        
     else
         disp('No corregir Degeneración VAM');
     end
     
     countstep=0;
 for A=1:m*n   
     countstep=countstep+1;
   % Construir la matriz no básica 
     nonx=zeros(m,n);
     for j=1:n
         for i=1:m
             if x(i,j)==0
                nonx(i,j)=1;
             end
         end
     end
      % inicio del matriz
      costloop=zeros(m,n);
      for j=1:n
          for i=1:m
              if x(i,j)>0
                 costloop(i,j)=inf;
              end
          end
      end
  for k=1:(m*n)%-countxdegen
     
        % Asignar una celda entrante a la matriz x
        countnon=0;
        for j=1:n
           
            for i=1:m
                if nonx(i,j)==1
                    ibas=i;
                    jbas=j;
                    countnon=1;
                   
                end 
                  if countnon==1
                          nonx(ibas,jbas)=inf; 
                    break
                  end
                 
            end
             if countnon==1
                         
                    break
             end
        end
       % Construya la matriz  básica equivalente
       x11=zeros(m+1,n+1);
       x22=zeros(m+1,n+1);
     for j=1:n
         for i=1:m
             
             if x(i,j)>0
                x11(i,j)=x(i,j);
                x22(i,j)=x(i,j);
             end
         end
     end
       
      for j=1:n
          for i=1:m
              x11(ibas,jbas)=inf;
               x22(ibas,jbas)=inf;
          end
      end
       % Contar el número de la celda básica en cada fila y columna
     
    
      for j=1:n
           countcol=0;
          for i=1:m
              if x11(i,j)>0
              countcol=countcol+1;
              end
          end;
          x11(m+1,j)=countcol;
          x22(m+1,j)=countcol;
      end
      for i=1:m
            countrow=0;
          for j=1:n
              if x11(i,j)>0
              countrow=countrow+1;
              end
          end
          x11(i,n+1)=countrow;
          x22(i,n+1)=countrow;
      end
 % Se elimina las variables básicas que tiene solo una en cada fila
   iterationloop=0;
  for i=1:m
      iterationloop=iterationloop+1;
    for i=1:m
      if x22(i,n+1)==1 
          ieliminate=i;
         for j=1:n
             if x22(ieliminate,j)<inf &&   x22(ieliminate,j)>0 
                 jeliminate=j;
                x22(ieliminate,jeliminate)=0;% Eliminate the basic variable on row
                x22(ieliminate,n+1)=x22(ieliminate,n+1)-1; % decrease the number of the basic variable on row one unit
                x22(m+1,jeliminate)=x22(m+1,jeliminate)-1; % decrease the number of the basic variable on column one unit
                      
             end
         end
        
      end
    end
  % Eliminar las variables básicas que tiene solo una en cada columna
  for j=1:n
      if x22(m+1,j)==1
          jeliminate1=j;
          for i=1:m
              if x22(i,jeliminate1)<inf && x22(i,jeliminate1)>0
                  ieliminate1=i;
                  x22(ieliminate1,jeliminate1)=0;% Eliminate the basic variable on row
                  x22(m+1,jeliminate1)=x22(m+1,jeliminate1)-1; % decrease the number of the basic variable on column one unit
                  x22(ieliminate1,n+1)=x22(ieliminate1,n+1)-1;% decrease the number of the basic variable on row one unit
              end
          end
      end
  end
  %Controlar la ruta del bucle de construcción
  for j=1:n
    for i=1:m
        if (x22(i,n+1)==0 || x22(i,n+1)==2) && (x22(m+1,j)==0 || x22(m+1,j)==2) 
           break
        else
                
      
        end
    end
  end 
  end
 
     for j=1:n
           
             if  (x22(ibas,j)~=0 && x22(ibas,j)<inf && x22(ibas,n+1)==2)
              
                 jneg=j;
                 x22(ibas,jneg)=(-1)*x22(ibas,jneg);
                 x22(m+1,jneg)=1;
                 x22(ibas,n+1)=1;
                   for i=1:m
                       if (x22(i,jneg)>0 && x22(m+1,jneg)==1)
                           ineg=i;
                          
                       end
                   end
               
             end
     end
  for p=1:n
     
      for j=1:n
         if (j~=jneg && x22(ineg,j)>0 && x22(ineg,n+1)==2) 
            
                 jneg1=j;
                 x22(ineg,jneg1)=(-1)*x22(ineg,jneg1);
                 x22(ineg,n+1)=1;
                  x22(m+1,jneg1)=1;
       
                 for i=1:m
                   if (x22(i,jneg1)>0 && x22(m+1,jneg1)==1)
                     ineg1=i;
                     ineg=ineg1;
                     jneg=jneg1;
                   end
                 end
         end
      end
      
     if  jneg1==jbas
       
         
     end   
  end
  
   
    sumloop=0;
    for i=1:m
        for j=1:n
            if  x22(i,j)~=0
                icost=i;
                jcost=j;
                if x22(icost,jcost)>0
                   sumloop=sumloop+c(icost,jcost);
                elseif x22(icost,jcost)<0
                    sumloop=sumloop+(-1)*c(icost,jcost);
                end
                    
                    
            end
        end
    end
    costloop(ibas,jbas)=sumloop;
  end
 
 countcontrol=0;
    for j=1:n
        for i=1:m
            if costloop(i,j)>=0
                countcontrol=countcontrol+1;
            end
        end
    end
    if countcontrol==m*n
        return
    end
   
  % Buscando el índice de mejora más pequeño absoluto
  minindex=0; 
 for j=1:n
       for i=1:m
           if costloop(i,j)<=0
               if costloop(i,j)<=minindex
                   minindex=costloop(i,j);
                   ismall=i;
                   jsmall=j;
               end
           end
       end
 end
 
       x33=zeros(m+1,n+1);
       x44=zeros(m+1,n+1);
     for j=1:n
         for i=1:m
             
             if x(i,j)>0
                x33(i,j)=x(i,j);
                x44(i,j)=x(i,j);
             end
         end
     end
      
      for j=1:n
          for i=1:m
              x33(ismall,jsmall)=inf;
               x44(ismall,jsmall)=inf;
          end
      end
       % Se cuenta el número de la celda básica en cada fila y columna
     
    
      for j=1:n
           countcol1=0;
          for i=1:m
              if x33(i,j)>0
              countcol1=countcol1+1;
              end
          end
          x33(m+1,j)=countcol1;
          x44(m+1,j)=countcol1;
      end
      for i=1:m
            countrow1=0;
          for j=1:n
              if x33(i,j)>0
              countrow1=countrow1+1;
              end
          end
          x33(i,n+1)=countrow1;
          x44(i,n+1)=countrow1;
      end             
% Eliminar las variables básicas que tiene solo una en cada fila
   iterationloop1=0;
  for i=1:m
      iterationloop1=iterationloop1+1;
    for i=1:m
      if x44(i,n+1)==1 
          ieliminate3=i;
         for j=1:n
             if x44(ieliminate3,j)<inf &&   x44(ieliminate3,j)>0
                 jeliminate3=j;
                x44(ieliminate3,jeliminate3)=0;% Eliminate the basic variable on row
                x44(ieliminate3,n+1)=x44(ieliminate3,n+1)-1; % decrease the number of the basic variable on row one unit
                x44(m+1,jeliminate3)=x44(m+1,jeliminate3)-1; % decrease the number of the basic variable on column one unit
                      
             end
         end
        
      end
    end
 
 % Eliminar las variables básicas que tiene solo una en cada columna
  for j=1:n
      if x44(m+1,j)==1
          jeliminate4=j;
          for i=1:m
              if x44(i,jeliminate4)<inf && x44(i,jeliminate4)>0
                  ieliminate4=i;
                  x44(ieliminate4,jeliminate4)=0;% Eliminar la variable básica en la fila
                  x44(m+1,jeliminate4)=x44(m+1,jeliminate4)-1; % disminuir el número de la variable básica en la columna una unidad
                  x44(ieliminate4,n+1)=x44(ieliminate4,n+1)-1;% disminuir el número de la variable básica en la fila una unidad
              end
          end
      end
  end
   
   
  % Controlar la ruta del bucle de construcción
    for j=1:n
        for i=1:m
        
            if (x44(i,n+1)==0 || x44(i,n+1)==2) && (x44(m+1,j)==0 || x44(m+1,j)==2) 
                break
       
            end       
      
        end
    end
  end 
  
 
     for j=1:n
           
             if  (x44(ismall,j)~=0 && x44(ismall,j)<inf && x44(ismall,n+1)==2)
              
                 jneg=j;
                 x44(ismall,jneg)=(-1)*x44(ismall,jneg);
                 x44(m+1,jneg)=1;
                 x44(ismall,n+1)=1;
                   for i=1:m
                       if (x44(i,jneg)>0 && x44(m+1,jneg)==1)
                           ineg=i;
                          
                       end
                   end
               
             end
     end
  for p=1:n
     
      for j=1:n
         if (j~=jneg && x44(ineg,j)>0 && x44(ineg,n+1)==2) 
            
                 jneg1=j;
                 x44(ineg,jneg1)=(-1)*x44(ineg,jneg1);
                 x44(ineg,n+1)=1;
                  x44(m+1,jneg1)=1;
       
                 for i=1:m
                   if (x44(i,jneg1)>0 && x44(m+1,jneg1)==1)
                     ineg1=i;
                     ineg=ineg1;
                     jneg=jneg1;
                   end
                 end
         end
      end
      % Control loop
     if  jneg1==jsmall
      
        % return
     end   
  end
  % Eliminar la columna j que tiene el número de variables básicas =2
    for j=1:n
        if x44(m+1,j)==2
            for i=1:m
                if x44(i,j)>0
                    x44(i,j)=0;
                end
            end
             x44(m+1,j)=0;
        end
       
    end
    %Eliminar la fila i que tiene el número de variables básicas =2
      for i=1:m
          if x44(i,n+1)>=2
              for j=1:n
                  if x44(i,j)>0
                      x44(i,j)=0;
                  end
              end
               x44(i,n+1)=0;
          end
         
      end
      % Buscando la ruta más pequeña absoluta y agregando esta ruta a la celda (ismall,jsmall)
  minpath=inf; 
 for j=1:n
       for i=1:m
           if x44(i,j)<0
               if abs(x44(i,j))<=minpath
                   minpath=abs(x44(i,j));
                   
               end
           end
       end
 end          
  % Se agrega la nueva ruta a la matriz x
 for j=1:n
     
     for i=1:m
         
             if x44(i,j)~=0 
                 
                x44(i,j)=abs(x44(i,j)+minpath);
                   if x44(i,j)==0
                       x44(i,j)=inf;
                   end
            
             end
     end 
 end
% Se agrega una celda entrante (ismall, jsmall) a la matriz x
    for j=1:n
          for i=1:m
              
               x44(ismall,jsmall)=minpath;
          end
    end
    % Se combina la nueva ruta y la ruta sin degeneración
 for j=1:n
     for i=1:m
         if x44(i,j)>0
             x(i,j)=x44(i,j);
         
         end
     end
 end
 % Eliminar valor inf en matriz x
      for j=1:n
          for i=1:m
              if x(i,j)==inf
               x(i,j)=0;
              end
          end
      end
      
  
     countstepdegen=0;
   
    
     for i=1:m
         for j=1:n
             if x(i,j)>0 && x(i,j)~=inf
                 countstepdegen=countstepdegen+1;
                
             end
         end
     end
     
      sumdemand=zeros(1,n);
     for j=1:n
         demandsum=0;
         for i=1:m
             if round(x(i,j))>0
                 demandsum=demandsum+round(x(i,j));
             end
         end
         sumdemand(j)=demandsum;
     end
     for j=1:n
         if sumdemand(j)~=round(d(j))
             disp('demanda desequilibrada');
             break
         end
     end
     %Comprobar suministro
     sumsupply=zeros(m,1);
      for i=1:m
          supplysum=0;
          for j=1:n
              if round(x(i,j))>0
                  supplysum=supplysum+round(x(i,j));
              end
          end
          sumsupply(i)=supplysum;
      end
      for i=1:m
          if sumsupply(i)~=round(s(i))
              disp('suministro desequilibrado');
             break
          end
      end
     
    
     if countstepdegen>=reducetant
        
     else 
         % corregir el problema de degeneración
         % corregir la matriz de degeneración
     numstepdegen=reducetant-countstepdegen;
     iterationstepDegen=0;
 for A=1:numstepdegen 
     iterationstepDegen=iterationstepDegen+1;
  
  % Se construye las variables u-v
     
    udual=zeros(m,1);
    vdual=zeros(1,n);
    for i=1:m
        udual(i)=inf;
    end
    for j=1:n
        vdual(j)=inf;
    end
    udual(1)=0;
   for i=1:1
       for j=1:n
           if x(i,j)>0
               vdual(j)=c(i,j)-udual(i);
           end
       end
   end
   for j=1:1
       for i=1:m
           if x(i,j)>0
               iu=i;
              if udual(iu)<inf
               vdual(j)=c(i,j)-udual(iu);
              else
                  if vdual(j)<inf
                      udual(iu)=c(i,j)-vdual(j);
                  end
              end
           end
       end
   end
 for k=1:m*n  
  for i=1:m
       if udual(i)<inf
          iu=i;
          for j=1:n
            if x(iu,j)>0
             
             vdual(j)=c(iu,j)-udual(iu);
            end
          end
       end
  end
 for j=1:n
     if vdual(j)<inf
         jv=j;
         for i=1:m
             if x(i,jv)>0
                 udual(i)=c(i,jv)-vdual(jv);
             end
         end
     end
 end
 countu=0;
 countv=0;
 for i=1:m
     if udual(i)<inf
      countu=countu+1;   
     end
 end
 for j=1:n
     if vdual(j)<inf
         countv=countv+1;
     end
 end
    if (countu==m & countv==n)
        return
    end
 end 
% Encuentra las celdas no básicas
  unx=zeros(m,n);
  for j=1:n
      for i=1:m
          if x(i,j)==0
              unx(i,j)=udual(i)+vdual(j)-c(i,j);
          end
      end
  end
  % Busca el máximo positivo de udual+vdual-c(i,j) para llegar a una nueva variable básica
  maxunx=0;
  for j=1:n
      for i=1:m
          if unx(i,j)>=maxunx
              maxunx=unx(i,j);
              imax=i;
              jmax=j;
          end
      end
  end
   % Cuente el número de variables básicas en cada fila
       
     for j=1:n
         sumcol=0;
         for i=1:m
             if x(i,j)>0
                 sumcol=sumcol+1;
             end
         end
             x(m+1,j)=sumcol;
     end
      for i=1:m
         sumrow=0;
         for j=1:n
             if x(i,j)>0
      end
       % Construya la matriz x equipovalente
                 sumrow=sumrow+1;
             end
         end
             x(i,n+1)=sumrow;
          for j=1:n+1
              for i=1:m+1
                  x1(i,j)=x(i,j);
              end
          end
     % Eliminar una variable de entrada para agregar una nueva
         for j=1:n
              for i=1:m
                  if (x(i,j)==r || x1(i,j)==r)
                   
                      x1(i,j)=0;
                  end
              end
         end
         % Agregar una nueva variable de entrada a la matriz x1
          for j=1:n
              for i=1:m
                 
                  x1(imax,jmax)=r;
              end
          end
        
 % Buscar y agregar el punto de entrada para la acción correctiva
      for i=1:m
         if i~=imax
          if x1(i,jmax)>0
              ienter1=i;
               for j=1:n
                  if j~=jmax
                   if x1(ienter1,j)>0
                       jenter1=j;
                   end
                  end
               end
          end
         end
      end
      x1(imax,jenter1)=r;
      x(imax,jenter1)=r;
      % Agregar demanda y oferta
      for j=1:n
          d(jenter1)=d(jenter1)+r;
      end
      for i=1:m
          s(imax)=s(imax)+r;
      end
 end
     end
   %El número de variable básica 
   countopt=0;
   for j=1:n
       for i=1:m
           if x(i,j)>0
               countopt=countopt+1;
           end
       end
   end
   % Convert x matrix
   xpath=zeros(m,n);
   for j=1:n
       for i=1:m
           if x(i,j)>0
               xpath(i,j)=round(x(i,j));
           end
       end
   end
 % Total cost
  Zopt=0;
    for j=1:n
        for i=1:m
            if xpath(i,j)>0
                
                Zopt=Zopt+(xpath(i,j)*c(i,j));
            end
        end
    end
 %disp('Occupied matrix of SS');
 disp(xpath);
 disp('Total cost');
 disp(Zopt);
 n7=1;
 for s2=1:m
 for s3=1:n;
serie(n7,1)=xpath(s2,s3);
n7=n7+1;
 end
 end
 set(handles.tabla3,'data',serie)
 
   set(handles.resul,'string',Zopt)
 end
   
  
   
function resul_Callback(hObject, eventdata, handles)
% hObject    handle to resul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resul as text
%        str2double(get(hObject,'String')) returns contents of resul as a double


% --- Executes during object creation, after setting all properties.
function resul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in borrar.
function borrar_Callback(hObject, eventdata, handles)
% hObject    handle to borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cero=[]
set(handles.tabla1,'data',cero);
set(handles.tabla2,'data',cero);
set(handles.tabla3,'data',cero);
set(handles.nro1,'string',' ');
set(handles.nro2,'string',' ');
set(handles.resul,'string',' ');
set(handles.resulb,'string',' ');


% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)
% hObject    handle to salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
