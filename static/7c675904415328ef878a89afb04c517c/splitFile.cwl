class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splitFile.cwl
inputs:
- id: head
  doc: '- put head in front of each output'
  type: File
  inputBinding:
    prefix: -head
- id: tail
  doc: '- put tail at end of each output'
  type: File
  inputBinding:
    prefix: -tail
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
outputs: []
cwlVersion: v1.1
baseCommand:
- splitFile
