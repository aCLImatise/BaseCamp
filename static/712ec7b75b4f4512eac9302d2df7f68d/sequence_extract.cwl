class: CommandLineTool
id: sequence_extract.cwl
inputs:
- id: in_bases
  doc: baselist extract bases as specified in the 'list' from each sequence
  type: boolean?
  inputBinding:
    prefix: -bases
- id: in_sequences
  doc: extract ordinal sequences as specified in the 'list'
  type: string?
  inputBinding:
    prefix: -sequences
- id: in_reverse
  doc: reverse the bases in the sequence
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_complement
  doc: complement the bases in the sequence
  type: boolean?
  inputBinding:
    prefix: -complement
- id: in_rc
  doc: alias for -reverse -complement
  type: boolean?
  inputBinding:
    prefix: -rc
- id: in_compress
  doc: compress homopolymer runs to one base
  type: boolean?
  inputBinding:
    prefix: -compress
- id: in_down_case
  doc: "print sequence if it is at least 'min' bases and at most 'max' bases long\n\
    a 'baselist' is a set of integers formed from any combination\nof the following,\
    \ seperated by a comma:\nnum       a single number\nbgn-end   a range of numbers:\
    \  bgn <= end\nbases are spaced-based; -bases 0-2,4 will print the bases between\n\
    the first two spaces (the first two bases) and the base after the\nfourth space\
    \ (the fifth base).\na 'seqlist' is a set of integers formed from any combination\n\
    of the following, seperated by a comma:\nnum       a single number\nbgn-end  \
    \ a range of numbers:  bgn <= end\nsequences are 1-based; -sequences 1,3-5 will\
    \ print the first, third,\nfourth and fifth sequences."
  type: long?
  inputBinding:
    prefix: -downcase
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sequence
- extract
