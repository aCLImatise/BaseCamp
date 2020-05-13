class: CommandLineTool
id: jalview.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: output_format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: open
  doc: ''
  type: boolean
  inputBinding:
    prefix: -open
outputs: []
cwlVersion: v1.1
baseCommand:
- jalview
