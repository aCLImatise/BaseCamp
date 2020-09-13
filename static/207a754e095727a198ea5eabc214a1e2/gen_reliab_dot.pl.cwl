class: CommandLineTool
id: ../../../gen_reliab_dot.pl.cwl
inputs:
- id: in_man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
- id: in_verbose
  doc: ''
  type: string
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: ''
  type: string
  inputBinding:
    prefix: --quiet
- id: in_reliability_file
  doc: reliability file
  type: File
  inputBinding:
    prefix: -f
- id: in_alignment_file
  doc: alignment file
  type: File
  inputBinding:
    prefix: -a
- id: in_probabilities
  doc: probabilities
  type: string
  inputBinding:
    prefix: -s
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reliability
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gen-reliab-dot.pl
