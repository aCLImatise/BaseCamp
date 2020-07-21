class: CommandLineTool
id: ../../../dot2pp.cwl
inputs:
- id: man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
- id: name
  doc: Sequence name
  type: string
  inputBinding:
    prefix: --name
- id: in_file_do_tdp_ps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile_dot_pp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dot2pp
