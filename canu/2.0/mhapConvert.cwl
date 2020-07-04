class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mhapConvert.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: input_do_tm_hap
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mhapConvert
