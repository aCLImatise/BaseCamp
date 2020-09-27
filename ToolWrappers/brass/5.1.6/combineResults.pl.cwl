class: CommandLineTool
id: combineResults.pl.cwl
inputs:
- id: in_x_ann_dot_groups
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_x_ann_dot_assembled
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_x_dot_final
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ploidy
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_acf
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_cn_state
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- combineResults.pl
