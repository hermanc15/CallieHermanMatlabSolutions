
%Callie Herman
%October 16, 2019
%This code allows the user to play tic tac toes with the computer. The
%while loop allows the game to continue as long as the player chooses "Yes"
%when asked to play. The for loop includes the possible moves for the
%player and computer. 

disp('Welcome to Callie''s Tic Tac Toe Extravaganza!');
userprompt = 'User Question';
question1 = 'Would you like to play?';
choice = questdlg(question1,userprompt,'Yes','No', 'Yes'); 

if strcmp(choice, 'No') 
    disp('Adios Amigo')
    return;
end

availableMoves = [1 2 3 4 5 6 7 8 9];
usedMoves = [ ];
%moves possible in the game

while strcmp(choice, 'Yes') %allows game to continue running as long as the player answers "yes" to do you want to play.
    
    board = [' 1 ',' 2 ',' 3 '; ' 4 ',' 5 ',' 6 ';' 7 ',' 8 ',' 9 '];
    disp(board);
    for i = 1:9 %inlcudes the move options for the player and the computer
        if (mod(i,2) == 1);
            disp('Player''s Turn')
            x = input('Pick a spot on the board between 1-9, x: ');
            floor(x);
            if (1 > x || x > 9); %this checks to make sure the player is inputing valid integers, after two incorrect responses, the game stops and the player loses
                disp('This is not a valid integer, please enter an integer between 1 and 9')
                x = input('Pick another spot on the board between 1-9, x: ');
                floor(x);
                if (1 > x || x > 9);
                    disp ('I told you to pick another spot, now you lose!')
                    break
                else
                end
            else
            end
            
            if ismember(x,usedMoves) %this checks prevents the player from overriding computer moves
                
                disp('This spot is taken, please pick another')
                x = input('Pick a spot on the board between 1-9, x: ');
                if ismember(x,usedMoves)
                    disp('Since you did not take my advice, you lose!')
                    break
                else
                end
                
            else
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
            end
            
            if(i >= 5) %starts checking to see if the player has won
                switch (x)
                    case 1
                        board(1,2) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(1,2) == 'X' && board(1,5) == 'X' && board(1,8) == 'X') || (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X') || (board(1,2) == 'X' && board(2,5) == 'X' && board(3,8) == 'X') %These and/or statements show the winning conditions for each space on the board
                            disp('Winner winner chicken dinner!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break; %if the player wins, it takes them out of the while loop and asks if they want to play again
                        end
                        
                        disp(board)
                    case 2
                        board(1,5) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(1,5) == 'X' && board(1,8) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,5) == 'X')
                            disp('Congrats you are a winner!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    case 3
                        board(1,8) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(1,8) == 'X' && board(1,5) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(3,2) == 'X') || board(2,8) == 'X' && board(3,8) == 'X';
                            disp('Congrats you got the dub!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                        
                        disp(board)
                    case 4
                        board(2,2) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(2,2) == 'X' && board(2,5) == 'X' && board(2,8) == 'X') || (board(1,2) == 'X' && board(3,2) == 'X');
                            disp('Winning isn''t everything, it''s the only thing, Congrats!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;  
                        end
                        
                        disp(board)
                    case 5
                        board(2,5) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(2,5) == 'X' && board(2,2) == 'X' && board(2,8) == 'X') ||(board(1,2) == 'X' && board(3,8) == 'X') ||(board(1,5) == 'X' && board(3,5) == 'X') || (board(1,8) == 'X' && board(3,2) == 'X');
                            disp('You were born to win, keep it up!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    case 6
                        board(2,8) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(2,8) == 'X' && board(1,8) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(2,2) == 'X');
                            disp('Congrats on getting the dub!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    case 7
                        board(3,2) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(3,2) == 'X' && board(3,5) == 'X' && board(3,8) == 'X') || (board(2,2) == 'X' && board(1,2) == 'X') || (board(2,5) == 'X' && board(1,8) == 'X');
                            disp('Winner winner chicken dinner!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    case 8
                        board(3,5) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(3,5) == 'X' && board(3,2) == 'X' && board(3,8) == 'X') ||(board(2,5) == 'X' && board(1,5) == 'X');
                            disp('Congrats on beating the computer!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    case 9
                        board(3,8) = 'X';
                        availableMoves = setdiff(availableMoves, x);
                        if (board(3,8) =='X' && board(3,5) == 'X' && board(3,2) == 'X') ||(board(2,5) == 'X' && board(1,2) == 'X') || (board(2,8) == 'X' && board(1,8) == 'X');
                            disp('Congrats on being a winner!');
                            question1 = 'Would you like to play again?';
                            choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                                break;
                        end
                        
                        disp(board)
                    otherwise %displays "tie game" after all moves have been taken and no one has won
                        disp('Tie game');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                end
                
            end
        end
        
        if (mod(i,2) == 0);
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
        end
        
        
        if(i >= 5)
            switch (O)
                case 1
                    board(1,2) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(1,2) == 'O' && board(1,5) == 'O' && board(1,8) == 'O') || (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O') || (board(1,2) == 'O' && board(2,5) == 'O' && board(3,8) == 'O')
                        disp('Looks like the computer won this round!');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                        break;
                    end
                    disp(board)
                case 2
                    board(1,5) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(1,5) == 'O' && board(1,8) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,5) == 'O')
                        disp('Computer-1 you-0');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                    end
                    
                    disp(board)
                case 3
                    board(1,8) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(1,8) == 'O' && board(1,5) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(3,2) == 'O') || board(2,8) == 'O' && board(3,8) == 'O';
                        disp('This computer was born to win');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                    
                    disp(board)
                case 4
                    board(2,2) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(2,2) == 'O' && board(2,5) == 'O' && board(2,8) == 'O') || (board(1,2) == 'O' && board(3,2) == 'O');
                        disp('Looks like the computer won this round!');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                    
                    disp(board)
                case 5
                    board(2,5) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(2,5) == 'O' && board(2,2) == 'O' && board(2,8) == 'O') ||(board(1,2) == 'O' && board(3,8) == 'O') ||(board(1,5) == 'O' && board(3,5) == 'O') || (board(1,8) == 'O' && board(3,2) == 'O');
                        disp('Computer-1 you-0');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                   
                    disp(board)
                case 6
                    board(2,8) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(2,8) == 'O' && board(1,8) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(2,2) == 'O');
                        disp('Looks like the computer won this round!');
                        question1 = 'Would you like to play?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                    
                    disp(board)
                case 7
                    board(3,2) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(3,2) == 'O' && board(3,5) == 'O' && board(3,8) == 'O') || (board(2,2) == 'O' && board(1,2) == 'O') || (board(2,5) == 'O' && board(1,8) == 'O');
                        disp('Looks like the computer won this time!');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                    end
                    disp(board)
                case 8
                    board(3,5) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(3,5) == 'O' && board(3,2) == 'O' && board(3,8) == 'O') ||(board(2,5) == 'O' && board(1,5) == 'O');
                        disp('This computer was made to win!');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                    end
                    disp(board)
                case 9
                    board(3,8) = 'O';
                    availableMoves = setdiff(availableMoves, O);
                    if (board(3,8) =='O' && board(3,5) == 'O' && board(3,2) == 'O') ||(board(2,5) == 'O' && board(1,2) == 'O') || (board(2,8) == 'O' && board(1,8) == 'O');
                        disp('Computer-1 you-0');
                        question1 = 'Would you like to play again?';
                        choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                            break;
                        end
                    
                    disp(board)
                otherwise
                    disp('Tie game');
                    question1 = 'Would you like to play again?';
                    choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
                        break;
                    end
                    
            end
            
        end
end

userprompt = 'User Question';
question1 = 'Would you like to play again?';
choice = questdlg(question1,userprompt,'Yes','No', 'Yes');
    
    if strcmp(choice, 'No')
        disp('Adios Amigo')
        return
    else
        availableMoves = [1 2 3 4 5 6 7 8 9];
        usedMoves = [ ];
    end
%This part of the code when the player or computer wins. The break
%statement for each win condition takes takes the player out of the loop to
%the question "do you want to play again?" and resets the board if they
%select "Yes" or says "Adios" if they select "No".

