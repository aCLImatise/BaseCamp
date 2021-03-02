class: CommandLineTool
id: mafToAxt.cwl
inputs:
- id: in_strip_db
  doc: '- Strip names from start to first period.'
  type: boolean?
  inputBinding:
    prefix: -stripDb
- id: in_in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_qname
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafToAxt
