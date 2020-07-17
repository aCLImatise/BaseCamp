class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compareProts3.pl.cwl
inputs:
- id: writes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: comparison
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tab
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: delim
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- compareProts3.pl
