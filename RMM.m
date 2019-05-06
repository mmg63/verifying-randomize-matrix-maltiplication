% input matrices
mt_A = [2, 7 ; 6, 4];

mt_B = [1, 3 ; 1, 2];

% multiply two intended matrices for our project
mt_correct_mult = mt_A * mt_B;


% arbitrary matrix
mt_Incorrect_mult = [90, 20 ; 10, 15];


% define N*1 random {0,1} vector vt_rnd

vt_rnd = randi(2, [2,1])-1;

% implement FREIVALDS Formula on both situation(correct and incorrect
% matrix)
mt_cr_pr = (mt_A * (mt_B * vt_rnd)) - (mt_correct_mult * vt_rnd);
mt_inCr_pr = (mt_A * (mt_B * vt_rnd)) - (mt_Incorrect_mult * vt_rnd);

% check the program computation
if mt_cr_pr == 0
  disp('When [A * B = C] -- algorithm answers --> YES');
else
    disp('When [A * B = C] -- algorithm answers --> NO');
end;
    
if mt_inCr_pr == 0
  disp('When [A * B != C] -- algorithm answers --> YES');
else
    disp('When [A * B != C] -- algorithm answers --> NO');
end;