class: CommandLineTool
id: splitFile.cwl
inputs:
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lines_per_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_basename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: head
  doc: in front of each output
  type: File
  inputBinding:
    prefix: -head
- id: tail
  doc: at end of each output
  type: File
  inputBinding:
    prefix: -tail
outputs: []
cwlVersion: v1.1
baseCommand:
- splitFile
