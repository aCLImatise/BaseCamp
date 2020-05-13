class: CommandLineTool
id: dumpBlob.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpBlob
