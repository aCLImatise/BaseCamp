class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_subseq.cwl
inputs:
- id: tab_delimited_output
  doc: TAB delimited output
  type: boolean
  inputBinding:
    prefix: -t
- id: sequence_line_length
  doc: sequence line length [0]
  type: long
  inputBinding:
    prefix: -l
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- subseq
