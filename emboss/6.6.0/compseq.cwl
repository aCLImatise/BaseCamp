class: CommandLineTool
id: compseq.cwl
inputs:
- id: word
  doc: integer    [2] This is the size of word (n-mer) to count. Thus if you want
    to count codon frequencies for a nucleotide sequence, you should enter 3 here.
    (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -word
- id: in_file
  doc: infile     This is a file previously produced by 'compseq' that can be used
    to set the expected frequencies of words in this analysis. The word size in the
    current run must be the same as the one in this results file. Obviously, you should
    use a file produced from protein sequences if you are counting protein sequence
    word frequencies, and you must use one made from nucleotide frequencies if you
    are analysing a nucleotide sequence.
  type: boolean
  inputBinding:
    prefix: -infile
- id: frame
  doc: integer    [0] The normal behaviour of 'compseq' is to count the frequencies
    of all words that occur by moving a window of length 'word' up by one each time.
    This option allows you to move the window up by the length of the word each time,
    skipping over the intervening words. You can count only those words that occur
    in a single frame of the word by setting this value to a number other than zero.
    If you set it to 1 it will only count the words in frame 1, 2 will only count
    the words in frame 2 and so on. (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -frame
outputs: []
cwlVersion: v1.1
baseCommand:
- compseq
