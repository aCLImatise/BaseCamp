class: CommandLineTool
id: single_coverage.cwl
inputs:
- id: in_h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- single_coverage
