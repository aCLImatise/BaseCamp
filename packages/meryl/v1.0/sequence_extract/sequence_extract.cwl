class: CommandLineTool
id: sequence_extract.cwl
inputs:
- id: in_bases
  doc: "baselist extract bases as specified in the 'list' from each sequence\n-sequences\
    \ seqlist  extract ordinal sequences as specified in the 'list'\n-reverse    \
    \        reverse the bases in the sequence\n-complement         complement the\
    \ bases in the sequence\n-rc                 alias for -reverse -complement\n\
    -compress           compress homopolymer runs to one base\n-upcase\n-downcase\n\
    -length min-max     print sequence if it is at least 'min' bases and at most 'max'\
    \ bases long\na 'baselist' is a set of integers formed from any combination\n\
    of the following, seperated by a comma:\nnum       a single number\nbgn-end  \
    \ a range of numbers:  bgn <= end\nbases are spaced-based; -bases 0-2,4 will print\
    \ the bases between\nthe first two spaces (the first two bases) and the base after\
    \ the\nfourth space (the fifth base).\na 'seqlist' is a set of integers formed\
    \ from any combination\nof the following, seperated by a comma:\nnum       a single\
    \ number\nbgn-end   a range of numbers:  bgn <= end\nsequences are 1-based; -sequences\
    \ 1,3-5 will print the first, third,\nfourth and fifth sequences."
  type: boolean
  inputBinding:
    prefix: -bases
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence
- extract
