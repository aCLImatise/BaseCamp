class: CommandLineTool
id: ../../../combineResults.pl.cwl
inputs:
- id: x_ann_dot_groups
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: x_ann_dot_assembled
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: x_dot_final
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ploidy
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: acf
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: cn_state
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- combineResults.pl
