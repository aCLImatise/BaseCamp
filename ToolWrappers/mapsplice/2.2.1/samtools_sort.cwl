class: CommandLineTool
id: samtools_sort.cwl
inputs:
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
- id: in_on
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -on
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- sort
