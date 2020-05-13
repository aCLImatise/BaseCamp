class: CommandLineTool
id: qpF4ratio.cwl
inputs:
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: v
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: '... toggle verbose mode ON.'
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- qpF4ratio
