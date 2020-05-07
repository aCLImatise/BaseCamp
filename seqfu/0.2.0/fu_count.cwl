class: CommandLineTool
id: fu_count.cwl
inputs:
- id: f_qc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fu-count
