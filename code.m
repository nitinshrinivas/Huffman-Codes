clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%
%% NOTE: This project takes values of acsii from 32 -> ' ' to 126 that is the last non-control charecter.
% Please ensure that your file meets the following requirements.
%%%%%%%%%%%%%%%%%%%%%%%%%

%% part 2

fileID1 = fopen('File 1.txt','r');       
ascii_contents = fread(fileID1);        % ascii contents of the file        
fclose(fileID1);

bin = zeros(127,1);                     % bins for all the 127 ascii's

for i=1:length(ascii_contents)         % freqency table of the ascii's
    bin(ascii_contents(i)) = bin(ascii_contents(i)) + 1;
end

NotReq = 0;

for z=1:31                                         % we dont want the ascii values from 1 to 31.
    NotReq = NotReq + bin(z);                      % =>not requires conntrol if any (present in File)
end

NotReq = NotReq + bin(127);                        % not req del if any present as it too is not of our intrest

intial_dist = bin./(length(ascii_contents) - NotReq); % intitial distribution of the code
intial_dist(1:31) = 0;                                % if any we subtract

checkProbDist = sum(intial_dist);                     % returns 1 if it is a probability dist.

w = 1;                                       % w is nothing but the total no of elemts having non-zero prob
for q=1:127
    if(intial_dist(q) ~= 0)
        final_dist(w,1) = intial_dist(q);
        code_in_int(w,1) = q;
        final_dist(w,2) = q;
        w = w + 1; 
    end
end
w = w-1;                                             % w is the number of non-zero distributions present

final_dist = sortrows(final_dist,'descend');          % decresing probability sorting

%% assigning the huffman code words starting from highest probability
codeword = '0';        
for u = 1:w
    temp = ((str2double(codeword)));
    code_in_int(u,2) = temp;
    final_dist(u,3) = temp;
    codeword = strcat('1',codeword);
end

code_in_int                % display the code words with ascii and numbers                   

huffman_code = strings([w,2]);

for d=1:w
        huffman_code(d,1) = char(code_in_int(d,1));
        huffman_code(d,2) = num2str(code_in_int(d,2));
end
huffman_code                % display the ascii and the code word assoiated with it in form of strings.

%% printing the encode to the file

fileID2 = fopen('foutput1.txt','w');

for saj= 1:length(ascii_contents)
    if(ascii_contents(saj) >= 32 && ascii_contents(saj) < 127)
        pos = linear_search(w,ascii_contents(saj),code_in_int(:,1));
        ascii_contents(saj) = code_in_int(pos,2);
    end
end
fprintf(fileID2,'%d',ascii_contents);
fclose(fileID2);

%% Decode the encoded binary txt with zero error

fileID3= fopen('foutput1.txt','r');
bit_stream = fscanf(fileID3,"%s",1);
fclose(fileID3);
strlength(bit_stream)

e = 1;
A = ones(length(ascii_contents),1); 
for i=1:strlength(bit_stream)
    if (bit_stream(i) ~= '0')
        A(e) = A(e)*10+1; 
    else 
        A(e) = A(e)+1;
        e = e + 1;
    end
end
A = A - 2;

ascii_contents = num2str(ascii_contents);
A = num2str(ascii_contents);
if(A == ascii_contents)
    error = 0;
else 
    error = 1;
end


%% Obervation

% this will decode the codewords perfrctly and hence will not cause error
% as we can observe error will be zero for any file whih we give as input.
