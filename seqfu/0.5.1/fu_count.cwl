class: CommandLineTool
id: ../../../fu_count.cwl
inputs:
- id: f_qc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fu-count
