class: CommandLineTool
id: dnp_binstrings.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_dinucleotide
  doc: "Dinucleotide that is to identify in fasta sequences One of AA, AC,\nAG, AT,\
    \ CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default:\nCC."
  type: string?
  inputBinding:
    prefix: --dinucleotide
- id: in_appearance_dot
  doc: REQUIRED ARGUMENTS
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
- dnp-binstrings
