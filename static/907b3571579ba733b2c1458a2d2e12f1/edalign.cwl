class: CommandLineTool
id: edalign.cwl
inputs:
- id: a
  doc: Mandatory, path to first input file
  type: File
  inputBinding:
    prefix: -a
- id: b
  doc: Mandatory, path to second input file
  type: File
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- edalign
