class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makeIgnoreList.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- makeIgnoreList
