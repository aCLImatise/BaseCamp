class: CommandLineTool
id: makenucseq.cwl
inputs:
- id: in_codon_file
  doc: "codon      Optional codon usage file. Nucleotide\nsequences will be created\
    \ as triplets\nmatching the frequencies in the file, with\nthe end trimmed to\
    \ be in the correct reading\nframe."
  type: boolean?
  inputBinding:
    prefix: -codonfile
- id: in_amount
  doc: "integer    [100] Number of sequences created (Integer 1\nor more)"
  type: boolean?
  inputBinding:
    prefix: -amount
- id: in_length
  doc: "integer    [100] Length of each sequence (Integer 1 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -length
- id: in_use_insert
  doc: toggle     [N] Do you want to make an insert
  type: boolean?
  inputBinding:
    prefix: -useinsert
- id: in_six_dot_six_dot_zero_dot_zero
  doc: 'Standard (Mandatory) qualifiers (* if not always prompted):'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makenucseq
