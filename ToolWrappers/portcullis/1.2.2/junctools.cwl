class: CommandLineTool
id: junctools.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contains
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_tools
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_manipulating
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_junction
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_files_dot
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- junctools
