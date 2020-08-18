class: CommandLineTool
id: ../../../extract_fq.pl.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: all_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: exclude_dot_list
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_fq.pl
