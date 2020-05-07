class: CommandLineTool
id: logcombiner.cwl
inputs:
- id: log_combiner
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: log
  doc: ''
  type: File
  inputBinding:
    prefix: -log
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- logcombiner
