class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafMeFirst.cwl
inputs:
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: me_dot_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafMeFirst
