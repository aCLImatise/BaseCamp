class: CommandLineTool
id: compress_fast5.cwl
inputs:
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_changing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_compression
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_fast_five
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compress_fast5
