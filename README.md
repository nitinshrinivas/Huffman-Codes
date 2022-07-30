# Huffman-coding
## Part of the IC project

### 1. Generate Source Files:
Create three text source files of the approximately same size (5-10 KB or 1-2 pages of
text) having the following properties:
(a) File 1: Contains only your name (or any one word) multiple times
(b) File 2: Repeat a paragraph of around 30 words multiple times
(c) File 3: Normal 1-2 pages of paragraphs (english text) with no repetitions
We repeat that the files need to be of same size roughly. This will help you to compare the compression in the
three scenarios.
### 2. Count Frequencies: 
Examine the source file’s contents and count the number of occurrences of each character.
Note that all characters must be included in the frequency table, including spaces, and any punctuation. This will
give you a probability distribution.
### 3. Construct Huffman code:
Construct a Huffman code for each of the probability distributions obtained from
the frequency tables. Output the symbols along with corresponding codewords of the Huffman code. (For each
symbol, the codeword should be displayed). 
### 4. Encode data: 
Using Huffman Algorithm encode the source file’s
contents into another file. Display the size of the encoded file.
### 5. Decode Data: 
From the encoded file, decode the original source file by extracting the symbols from the
codewords. Check the decoded output with the original file (via a code snippet) and ensure there is no error in
decoding.
### 6. Recording your algorithm and observations via video:
The video for this file should contain the flow of your code, example executions, description of your outputs, and
the inferences you derived by comparing the lengths of the compressed sequence, time taken for
compression/decoding, etc. Also, note if you tried anything else apart from the problem statement, if some part of
the problem could not be executed by you (what were the difficulties, what you tried to overcome them?). Any
other observations also you are free to record. The whole video can be between 10-15 minutes.
