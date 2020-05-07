class: CommandLineTool
id: headRest_count.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- headRest
- count
