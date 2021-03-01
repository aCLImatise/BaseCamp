class: CommandLineTool
id: kocos.pl.cwl
inputs:
- id: in_literal
  doc: Specify the target word directly on command line as a literal.
  type: string?
  inputBinding:
    prefix: --literal
- id: in_regex
  doc: "Specify a file containing Perl regular expression/s that define\nthe target\
    \ word."
  type: File?
  inputBinding:
    prefix: --regex
- id: in_order
  doc: "Specify the value of K (K>0) to find the kth order co-occurrences.\nA Kth\
    \ order co-occurrence is a word that co-occurs with a (K-1)th\norder co-occurrence\
    \ of the target word.\nBy default, the value of K is set to 1 which simply lists\
    \ the\nwords that co-occur with a given target word. When K is 2, all words\n\
    that co-occur with the words that co-occur with the target word are\nshown, and\
    \ so on for higher orders."
  type: long?
  inputBinding:
    prefix: --order
- id: in_trace
  doc: "Specify the name of a TRACEFILE to see a detailed trace report\nshowing  the\
    \ chains of co-occurrences. A chain shows how a Kth\norder co-occurrence is reached\
    \ as a sequence of K lower order\nco-occurrences.\ne.g. WORD->First->Second->Third..->Kth\n\
    shows that 'First' is a first order co-occurrence of WORD,\n'Second' is a second\
    \ order co-occurrence of WORD which co-occurs\nwith 'First'. 'Third' is a third\
    \ order co-occurrence of WORD which\nco-occurs with 'Second' and so on until K\
    \ is reached."
  type: string?
  inputBinding:
    prefix: --trace
- id: in_bigram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kocos.pl
