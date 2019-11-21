function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Callie Herman
%
%         DUE: End of class, November 21
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced %BUG 1: The bug was not recognizing the user input, changing the "or (||)" to "and (&&)" allowed the user input to be recognized.      
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %BUG 2: the code did not run after this point until I added an extra "=" sign                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;  %BUG 3: The "h" in advancedhighest was not capitilized and did not match the previous format       
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest, 1);  %BUG 4: The game was not randomly selecting a number, so I used randi to incorporate random sampling of numbers   

% initialize number of guesses and User_guess

numOfTries = 0; %BUG 5: The game was starting at 2 instead of one so changing the "1" to "0" fixed the error.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %Bug 6:The ">=" did not allow the player to input the number 10, removing the "=" allowed the player to guess a number between 1-10

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop
 
% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %BUG 7: had to change ">" to "<" because the fprintf statement is designed to tell the user their guess was too low. I found this error when the "too low" statement was not being shown for any of my guesses.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif userGuess == secretNumber %BUG 8: no matter how many guesses I put in, the game always said I got it on the first try when I finally guessed the right number. I added a new loop to account for guessing the secret number on the first try.
    if numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber);
    end
end %BUG 9: the "if" statement for guessing too low,high, or correctly on the first try needed an "end" statement. I found this by following the flow of the code and matching up end statements with their repsective "if, while, etc" loops.
end %BUG 10: Before running the game, I reveiwed the code to make sure each "if, while, elseif" statement had an "end" statement.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

% end of game