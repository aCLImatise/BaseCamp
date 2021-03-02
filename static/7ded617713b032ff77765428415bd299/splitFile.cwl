class: CommandLineTool
id: splitFile.cwl
inputs:
- id: in_head
  doc: '- put head in front of each output'
  type: File?
  inputBinding:
    prefix: -head
- id: in_tail
  doc: '- put tail at end of each output'
  type: File?
  inputBinding:
    prefix: -tail
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_lines_per_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitFile
