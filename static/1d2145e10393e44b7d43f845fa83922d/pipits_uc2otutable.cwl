class: CommandLineTool
id: pipits_uc2otutable.cwl
inputs:
- id: in_i
  doc: '[REQUIRED]'
  type: File?
  inputBinding:
    prefix: -i
- id: in_o
  doc: '[REQUIRED]'
  type: string?
  inputBinding:
    prefix: -o
- id: in_l
  doc: '[REQUIRED]'
  type: string?
  inputBinding:
    prefix: -l
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_writes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_entry
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_file_dot
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pipits_uc2otutable
