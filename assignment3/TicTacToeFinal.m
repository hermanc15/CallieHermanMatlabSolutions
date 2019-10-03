%Callie Herman
%October 2, 2019
%This code allows the user to play tic tac toes with the computer. 

disp('Welcome to Callie''s Tic Tac Toe Adventure');
userprompt = 'User Question';
question1 = 'Would you like to play?';
choice = questdlg(question1,userprompt,'Yes','No', 'Yes'); %gives the user a yes or no option to play

if strcmp(choice, 'No') %repsonse to no, ends the game and says goodbye
    disp('Adios Amigo')
    return;
end

availableMoves = [1 2 3 4 5 6 7 8 9]; %moves possible in the game 

       
%Move 1
disp('Player''s Turn')
board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 ']; %displays the initial game board for the user
disp(board);
x = input('Pick a spot on the board between 1-9, x: '); %allows the user to type in where they want to put an x on the board
switch (x) %below are the 9 different spaces that can be taken on the board
    case 1
        board(1,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 2
        board(1,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 3
        board(1,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 4
        board(2,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 5
        board(2,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 6
        board(2,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 7
        board(3,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 8
        board(3,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 9
        board(3,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%CPU Move 1
O = randsample(availableMoves, 1); %these two lines of code prevent the computer from taking an occupied spot on the board
availableMoves = setdiff(availableMoves, O);
disp('Computer Plays');
switch (O)
        case 1
            board (1,2) = 'O';
            disp(board)
        case 2
            board (1,5) = 'O';
            disp(board)
        case 3 
            board (1,8) = 'O';
            disp(board)
        case 4
            board (2,2) = 'O';
            disp(board)
        case 5
            board (2,5) = 'O';
            disp(board)
        case 6
            board (2,8) = 'O';
            disp(board)
        case 7
            board (3,2) = 'O';
            disp(board)
        case 8
            board (3,5) = 'O';
            disp(board)
        case 9
            board (3,8) = 'O';
            disp(board)
    end

%Move 3
disp('Player''s Turn')
%board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 '];
disp(board);
x = input('Pick a spot on the board between 1-9, x: ');
    
switch (x)
    case 1
        board(1,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 2
        board(1,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 3
        board(1,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 4
        board(2,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 5
        board(2,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 6
        board(2,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 7
        board(3,2) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 8
        board(3,5) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 9
        board(3,8) = 'X';
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%CPU Move 4
O = randsample(availableMoves, 1);
availableMoves = setdiff(availableMoves, O);
disp('Computer Plays');

    switch (O)
        case 1
            board (1,2) = 'O';
            disp(board)
        case 2
            board (1,5) = 'O';
            disp(board)
        case 3 
            board (1,8) = 'O';
            disp(board)
        case 4
            board (2,2) = 'O';
            disp(board)
        case 5
            board (2,5) = 'O';
            disp(board)
        case 6
            board (2,8) = 'O';
            disp(board)
        case 7
            board (3,2) = 'O';
            disp(board)
        case 8
            board (3,5) = 'O';
            disp(board)
        case 9
            board (3,8) = 'O';
            disp(board)
    end

%Move 5
disp('Player''s Turn')
%board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 '];
disp(board);
x = input('Pick a spot on the board between 1-9, x: ');

switch (x)
    case 1
        board(1,2) = 'X';
        if (board(1,2) == 'X' && board(1,5) == 'X' && board(1,8) == 'X') || (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X') || (board(1,2) == 'X' && board(2,5) == 'X' && board(3,8) == 'X') %These and/or statements show the winning conditions for each space on the board
            disp('Winner winner chicken dinner!')
            return; %if there is a winner, the game stops and displays a supportive message, if there is no winner the game continues until someones wins or there is a tie.
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 2
        board(1,5) = 'X';
        if (board(1,5) == 'X' && board(1,8) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,5) == 'X')
            disp('Congrats you are a winner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 3
        board(1,8) = 'X';
        if (board(1,8) == 'X' && board(1,5) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,2) == 'X') || board(2,8) == 'X' && board(3,8) == 'X';
            disp('Congrats you got the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 4
        board(2,2) = 'X';
        if (board(2,2) == 'X' && board(2,5) == 'X' && board(2,8) == 'X') || (board(1,2) == 'X' && board(3,2) == 'X');
            disp('Winning isn''t everything, it''s the only thing, Congrats!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 5
        board(2,5) = 'X';
        if (board(2,5) == 'X' && board(2,2) == 'X' && board(2,8) == 'X') ||(board(1,2) == 'X' && board(3,8) == 'X') ||(board(1,5) == 'X' && board(3,5) == 'X') || (board(1,8) == 'X' && board(3,2) == 'X');
           disp('You were born to win, keep it up!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 6
        board(2,8) = 'X';
       if (board(2,8) == 'X' && board(1,8) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(2,2) == 'X');
          disp('Congrats on getting the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 7
        board(3,2) = 'X';
        if (board(3,2) == 'X' && board(3,5) == 'X' && board(3,8) == 'X') || (board(2,2) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(1,8) == 'X');
           disp('Winner winner chicken dinner!');
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 8
        board(3,5) = 'X';
        if (board(3,5) == 'X' && board(3,2) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(1,5) == 'X');
            disp('Congrats on beating the computer!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 9
        board(3,8) = 'X';
        if (board(3,8) =='X' && board(3,5) == 'X' && board(3,2) == 'X') ||(board(2,5) == 'X' && board(1,2) == 'X') || (board(2,8) == 'X' && board(1,8) == 'X');
           disp('Congrats on being a winner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%CPU Move 6
O = randsample(availableMoves, 1); 
availableMoves = setdiff(availableMoves, O);
disp('Computer Plays');
switch (O)
    case 1
        board(1,2) = 'O';
        if (board(1,2) == 'O' && board(1,5) == 'O' && board(1,8) == 'O') || (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O') || (board(1,2) == 'O' && board(2,5) == 'O' && board(3,8) == 'O')
            disp('Looks like the computer won this round!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 2
        board(1,5) = 'O';
        if (board(1,5) == 'O' && board(1,8) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,5) == 'O')
            disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 3
        board(1,8) = 'O';
        if (board(1,8) == 'O' && board(1,5) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,2) == 'O') || board(2,8) == 'O' && board(3,8) == 'O';
            disp('This computer was born to win')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 4
        board(2,2) = 'O';
        if (board(2,2) == 'O' && board(2,5) == 'O' && board(2,8) == 'O') || (board(1,2) == 'O' && board(3,2) == 'O');
            disp('Looks like the computer won this round!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 5
        board(2,5) = 'O';
        if (board(2,5) == 'O' && board(2,2) == 'O' && board(2,8) == 'O') ||(board(1,2) == 'O' && board(3,8) == 'O') ||(board(1,5) == 'O' && board(3,5) == 'O') || (board(1,8) == 'O' && board(3,2) == 'O');
           disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, 0);
        disp(board)
    case 6
        board(2,8) = 'O';
       if (board(2,8) == 'O' && board(1,8) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(2,2) == 'O');
          disp('Round of a applause for the computer winning!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 7
        board(3,2) = 'O';
        if (board(3,2) == 'O' && board(3,5) == 'O' && board(3,8) == 'O') || (board(2,2) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(1,8) == 'O');
           disp('Looks like the computer won this time!');
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 8
        board(3,5) = 'O';
        if (board(3,5) == 'O' && board(3,2) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(1,5) == 'O');
            disp('This computer was made to win!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 9
        board(3,8) = 'O';
        if (board(3,8) =='O' && board(3,5) == 'O' && board(3,2) == 'O') ||(board(2,5) == 'O' && board(1,2) == 'O') || (board(2,8) == 'O' && board(1,8) == 'O');
           disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%Move 7
disp('Player''s Turn')
%board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 '];
disp(board);
x = input('Pick a spot on the board between 1-9, x: ');

switch (x)
    case 1
        board(1,2) = 'X';
        if (board(1,2) == 'X' && board(1,5) == 'X' && board(1,8) == 'X') || (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X') || (board(1,2) == 'X' && board(2,5) == 'X' && board(3,8) == 'X')
            disp('Winner winner chicken dinner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 2
        board(1,5) = 'X';
        if (board(1,5) == 'X' && board(1,8) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,5) == 'X')
            disp('Congrats you are a winner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 3
        board(1,8) = 'X';
        if (board(1,8) == 'X' && board(1,5) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,2) == 'X') || board(2,8) == 'X' && board(3,8) == 'X';
            disp('Congrats you got the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 4
        board(2,2) = 'X';
        if (board(2,2) == 'X' && board(2,5) == 'X' && board(2,8) == 'X') || (board(1,2) == 'X' && board(3,2) == 'X');
            disp('Winning isn''t everything, it''s the only thing, Congrats!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 5
        board(2,5) = 'X';
        if (board(2,5) == 'X' && board(2,2) == 'X' && board(2,8) == 'X') ||(board(1,2) == 'X' && board(3,8) == 'X') ||(board(1,5) == 'X' && board(3,5) == 'X') || (board(1,8) == 'X' && board(3,2) == 'X');
           disp('You were born to win, keep it up!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 6
        board(2,8) = 'X';
       if (board(2,8) == 'X' && board(1,8) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(2,2) == 'X');
          disp('Congrats on getting the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 7
        board(3,2) = 'X';
        if (board(3,2) == 'X' && board(3,5) == 'X' && board(3,8) == 'X') || (board(2,2) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(1,8) == 'X');
           disp('Winner winner chicken dinner!');
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 8
        board(3,5) = 'X';
        if (board(3,5) == 'X' && board(3,2) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(1,5) == 'X');
            disp('Congrats on beating the computer!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 9
        board(3,8) = 'X';
        if (board(3,8) =='X' && board(3,5) == 'X' && board(3,2) == 'X') ||(board(2,5) == 'X' && board(1,2) == 'X') || (board(2,8) == 'X' && board(1,8) == 'X');
           disp('Congrats on being a winner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%CPU Move 8
O = randsample(availableMoves, 1);
availableMoves = setdiff(availableMoves, O);
disp('Computer Plays');

switch (O)
    case 1
        board(1,2) = 'O';
        if (board(1,2) == 'O' && board(1,5) == 'O' && board(1,8) == 'O') || (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O') || (board(1,2) == 'O' && board(2,5) == 'O' && board(3,8) == 'O')
            disp('Looks like the computer won this round!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 2
        board(1,5) = 'O';
        if (board(1,5) == 'O' && board(1,8) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,5) == 'O')
            disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 3
        board(1,8) = 'O';
        if (board(1,8) == 'O' && board(1,5) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,2) == 'O') || board(2,8) == 'O' && board(3,8) == 'O';
            disp('This computer was born to win')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 4
        board(2,2) = 'O';
        if (board(2,2) == 'O' && board(2,5) == 'O' && board(2,8) == 'O') || (board(1,2) == 'O' && board(3,2) == 'O');
            disp('Looks like the computer won this round!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 5
        board(2,5) = 'O';
        if (board(2,5) == 'O' && board(2,2) == 'O' && board(2,8) == 'O') ||(board(1,2) == 'O' && board(3,8) == 'O') ||(board(1,5) == 'O' && board(3,5) == 'O') || (board(1,8) == 'O' && board(3,2) == 'O');
           disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, 0);
        disp(board)
    case 6
        board(2,8) = 'O';
       if (board(2,8) == 'O' && board(1,8) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(2,2) == 'O');
          disp('Round of a applause for the computer winning!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 7
        board(3,2) = 'O';
        if (board(3,2) == 'O' && board(3,5) == 'O' && board(3,8) == 'O') || (board(2,2) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(1,8) == 'O');
           disp('Looks like the computer won this time!');
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 8
        board(3,5) = 'O';
        if (board(3,5) == 'O' && board(3,2) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(1,5) == 'O');
            disp('This computer was made to win!')
            return;
        end
        availableMoves = setdiff(availableMoves, O);
        disp(board)
    case 9
        board(3,8) = 'O';
        if (board(3,8) =='O' && board(3,5) == 'O' && board(3,2) == 'O') ||(board(2,5) == 'O' && board(1,2) == 'O') || (board(2,8) == 'O' && board(1,8) == 'O');
           disp('Computer-1 you-0')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

%Move 9
disp('Player''s Turn')
%board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 '];
disp(board);
x = input('Pick a spot on the board between 1-9, x: ');

switch (x)
    case 1
        board(1,2) = 'X';
        if (board(1,2) == 'X' && board(1,5) == 'X' && board(1,8) == 'X') || (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X') || (board(1,2) == 'X' && board(2,5) == 'X' && board(3,8) == 'X')
            disp('Winner winner chicken dinner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 2
        board(1,5) = 'X';
        if (board(1,5) == 'X' && board(1,8) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,5) == 'X')
            disp('Congrats you are a winner!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 3
        board(1,8) = 'X';
        if (board(1,8) == 'X' && board(1,5) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,2) == 'X') || board(2,8) == 'X' && board(3,8) == 'X';
            disp('Congrats you got the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 4
        board(2,2) = 'X';
        if (board(2,2) == 'X' && board(2,5) == 'X' && board(2,8) == 'X') || (board(1,2) == 'X' && board(3,2) == 'X');
            disp('Winning isn''t everything, it''s the only thing, Congrats!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 5
        board(2,5) = 'X';
        if (board(2,5) == 'X' && board(2,2) == 'X' && board(2,8) == 'X') ||(board(1,2) == 'X' && board(3,8) == 'X') ||(board(1,5) == 'X' && board(3,5) == 'X') || (board(1,8) == 'X' && board(3,2) == 'X');
           disp('You were born to win, keep it up!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 6
        board(2,8) = 'X';
       if (board(2,8) == 'X' && board(1,8) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(2,2) == 'X');
          disp('Congrats on getting the dub!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 7
        board(3,2) = 'X';
        if (board(3,2) == 'X' && board(3,5) == 'X' && board(3,8) == 'X') || (board(2,2) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(1,8) == 'X');
           disp('Winner winner chicken dinner!');
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 8
        board(3,5) = 'X';
        if (board(3,5) == 'X' && board(3,2) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(1,5) == 'X');
            disp('Congrats on beating the computer!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
    case 9
        board(3,8) = 'X';
        if (board(3,8) =='X' && board(3,5) == 'X' && board(3,2) == 'X') ||(board(2,5) == 'X' && board(1,2) == 'X') || (board(2,8) == 'X' && board(1,8) == 'X');
           disp('Congrats! You tied the computer!')
            return;
        end
        availableMoves = setdiff(availableMoves, x);
        disp(board)
end

