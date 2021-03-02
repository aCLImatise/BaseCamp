class: CommandLineTool
id: bwamempy.cwl
inputs:
- id: in_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_me_mdot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bwamempy
