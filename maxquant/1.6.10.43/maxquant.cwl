class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maxquant.cwl
inputs:
- id: complete
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: run
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: an
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: existing
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: mq_par_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- maxquant
