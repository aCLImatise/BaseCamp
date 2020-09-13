class: CommandLineTool
id: ../../../pslToBed.cwl
inputs:
- id: in_cds
  doc: ''
  type: File
  inputBinding:
    prefix: -cds
- id: in_pos_name
  doc: ''
  type: boolean
  inputBinding:
    prefix: -posName
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pslToBed
