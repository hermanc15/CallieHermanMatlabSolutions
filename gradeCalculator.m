function varargout = gradeCalculator(varargin)
% GRADECALCULATOR MATLAB code for gradeCalculator.fig
%      GRADECALCULATOR, by itself, creates a new GRADECALCULATOR or raises the existing
%      singleton*.
%
%      H = GRADECALCULATOR returns the handle to a new GRADECALCULATOR or the handle to
%      the existing singleton*.
%
%      GRADECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRADECALCULATOR.M with the given input arguments.
%
%      GRADECALCULATOR('Property','Value',...) creates a new GRADECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gradeCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gradeCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gradeCalculator

% Last Modified by GUIDE v2.5 26-Nov-2019 19:46:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gradeCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @gradeCalculator_OutputFcn, ...
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


% --- Executes just before gradeCalculator is made visible.
function gradeCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gradeCalculator (see VARARGIN)

%Creates empty spaces so grades 1-5 can be entered into the grade
%calculator GUI
set(handles.Grade1, 'String', num2str(0));
set(handles.Grade2, 'String', num2str(0));
set(handles.Grade3, 'String', num2str(0));
set(handles.Grade4, 'String', num2str(0));
set(handles.Grade5, 'String', num2str(0));
handles.Percentage = 0;
handles.letterGrade = (' ')

% Choose default command line output for gradeCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gradeCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gradeCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calculate_Grade.
function calculate_Grade_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_Grade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.grade1 = str2double(get(handles.Grade1, 'String'))
handles.grade2 = str2double(get(handles.Grade2, 'String'))
handles.grade3 = str2double(get(handles.Grade3, 'String'))
handles.grade4 = str2double(get(handles.Grade4, 'String'))
handles.grade5 = str2double(get(handles.Grade5, 'String'))

%Average Grade Calculation
handles.Percentage = (handles.grade1 + handles.grade2 + handles.grade3 + handles.grade4 + handles.grade5)/(5)
if handles.Percentage >= 90
    handles.letterGrade = ('A')
elseif handles.Percentage < 90 && handles.Percentage >= 80
    handles.letterGrade = ('B')
elseif handles.Percentage < 80 && handles.Percentage >= 70
    handles.letterGrade = ('C')
elseif handles.Percentage < 70 && handles.Percentage >= 60
    handles.letterGrade = ('D')
elseif handles.Percentage < 60
    handles.letterGrade = ('F')
end

set(handles.numGrade_text, 'String', handles.Percentage);
set(handles.lettergrade_text, 'String', handles.letterGrade)



function Grade5_Callback(hObject, eventdata, handles)
% hObject    handle to Grade5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grade5 as text
%        str2double(get(hObject,'String')) returns contents of Grade5 as a double


% --- Executes during object creation, after setting all properties.
function Grade5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grade5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Grade4_Callback(hObject, eventdata, handles)
% hObject    handle to Grade4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grade4 as text
%        str2double(get(hObject,'String')) returns contents of Grade4 as a double


% --- Executes during object creation, after setting all properties.
function Grade4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grade4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Grade3_Callback(hObject, eventdata, handles)
% hObject    handle to Grade3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grade3 as text
%        str2double(get(hObject,'String')) returns contents of Grade3 as a double


% --- Executes during object creation, after setting all properties.
function Grade3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grade3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Grade2_Callback(hObject, eventdata, handles)
% hObject    handle to Grade2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grade2 as text
%        str2double(get(hObject,'String')) returns contents of Grade2 as a double


% --- Executes during object creation, after setting all properties.
function Grade2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grade2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Grade1_Callback(hObject, eventdata, handles)
% hObject    handle to Grade1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Grade1 as text
%        str2double(get(hObject,'String')) returns contents of Grade1 as a double


% --- Executes during object creation, after setting all properties.
function Grade1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grade1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
