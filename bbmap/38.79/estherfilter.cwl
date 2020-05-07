class: CommandLineTool
id: estherfilter.sh.cwl
inputs:
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- estherfilter.sh
