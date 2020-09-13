class: CommandLineTool
id: ../../../linkage2allegro.cwl
inputs:
- id: in_l
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: in_h
  doc: ''
  type: File
  inputBinding:
    prefix: -h
- id: in_d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- linkage2allegro
