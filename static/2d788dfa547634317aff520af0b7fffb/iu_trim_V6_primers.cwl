class: CommandLineTool
id: iu_trim_V6_primers.cwl
inputs:
- id: in_archaea
  doc: When set, primers for arhacea is used instead of bacteria.
  type: boolean?
  inputBinding:
    prefix: --archaea
- id: in_debug
  doc: Turn on debug prints.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_fast_a
  doc: "FASTA file that contain archaeal or bacterial V6 sequences with\nprimers.\
    \ This file is expected to be the result of iu-merge-\npairs analysis with these\
    \ flags and parameter: \"--marker-gene-\nstringent --retain-only-overlap --max-num-mismatches\
    \ 0\"."
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
- iu-trim-V6-primers
