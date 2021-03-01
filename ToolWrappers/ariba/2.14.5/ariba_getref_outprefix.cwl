class: CommandLineTool
id: ariba_getref_outprefix.cwl
inputs:
- id: in_ariba
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_ref
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ariba
- getref
- outprefix
