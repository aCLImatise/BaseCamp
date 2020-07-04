class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/popt.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: rna_sub_opt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- popt
