class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dextract.cwl
inputs:
- id: v_faq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vfaq
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dextract
