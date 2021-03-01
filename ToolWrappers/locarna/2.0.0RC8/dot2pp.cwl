class: CommandLineTool
id: dot2pp.cwl
inputs:
- id: in_man
  doc: documentation
  type: string?
  inputBinding:
    prefix: --man
- id: in_name
  doc: Sequence name
  type: string?
  inputBinding:
    prefix: --name
- id: in_in_file_do_tdp_ps
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dot2pp
