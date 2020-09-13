class: CommandLineTool
id: ../../../shannon.py.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -K
- id: in_partition
  doc: ''
  type: long
  inputBinding:
    prefix: --partition
- id: in_compare
  doc: ''
  type: File
  inputBinding:
    prefix: --compare
- id: in_o
  doc: ''
  type: Directory
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shannon.py
