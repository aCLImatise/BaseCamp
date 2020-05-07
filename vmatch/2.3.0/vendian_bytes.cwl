class: CommandLineTool
id: vendian_bytes.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vendian
- bytes
