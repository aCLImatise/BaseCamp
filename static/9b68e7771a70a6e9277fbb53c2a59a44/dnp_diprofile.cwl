class: CommandLineTool
id: dnp_diprofile.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_dinucleotide
  doc: "Dinucleotide to compute a frequency profile in fasta file. One of\nAA, AC,\
    \ AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT.\nDefault: AA."
  type: File?
  inputBinding:
    prefix: --dinucleotide
- id: in_seq_length
  doc: 'Sequence length in fasta file. In range [25..600]. Default: 600.'
  type: long?
  inputBinding:
    prefix: --seqlength
- id: in_complement
  doc: "Perform computation on COMPLEMENTARY sequences of the strings in\nfasta file."
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_verbose
  doc: Print parameters and variables.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_position_dot
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
- dnp-diprofile
