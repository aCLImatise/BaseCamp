class: CommandLineTool
id: ../../../_compseq.cwl
inputs:
- id: in_word
  doc: integer    [2] This is the size of word (n-mer) to
  type: boolean
  inputBinding:
    prefix: -word
- id: in_in_file
  doc: "infile     This is a file previously produced by\n'compseq' that can be used\
    \ to set the\nexpected frequencies of words in this\nanalysis.\nThe word size\
    \ in the current run must be the\nsame as the one in this results file.\nObviously,\
    \ you should use a file produced\nfrom protein sequences if you are counting\n\
    protein sequence word frequencies, and you\nmust use one made from nucleotide\n\
    frequencies if you are analysing a\nnucleotide sequence."
  type: boolean
  inputBinding:
    prefix: -infile
- id: in_frame
  doc: "integer    [0] The normal behaviour of 'compseq' is to\ncount the frequencies\
    \ of all words that\noccur by moving a window of length 'word' up\nby one each\
    \ time.\nThis option allows you to move the window up\nby the length of the word\
    \ each time,\nskipping over the intervening words.\nYou can count only those words\
    \ that occur in\na single frame of the word by setting this\nvalue to a number\
    \ other than zero.\nIf you set it to 1 it will only count the\nwords in frame\
    \ 1, 2 will only count the\nwords in frame 2 and so on. (Integer 0 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -frame
- id: in_calc_freq
  doc: "boolean    [N] If this is set true then the expected\nfrequencies of words\
    \ are calculated from the\nobserved frequency of single bases or\nresidues in\
    \ the sequences.\nIf you are reporting a word size of 1\n(single bases or residues)\
    \ then there is no\npoint in using this option because the\ncalculated expected\
    \ frequency will be equal\nto the observed frequency.\nCalculating the expected\
    \ frequencies like\nthis will give an approximation of the\nexpected frequencies\
    \ that you might get by\nusing an input file of frequencies produced\nby a previous\
    \ run of this program. If an\ninput file of expected word frequencies has\nbeen\
    \ specified then the values from that\nfile will be used instead of this\ncalculation\
    \ of expected frequency from the\nsequence, even if 'calcfreq' is set to be\n\
    true."
  type: boolean
  inputBinding:
    prefix: -calcfreq
- id: in_count_dot
  doc: Thus if you want to count codon frequencies
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _compseq
