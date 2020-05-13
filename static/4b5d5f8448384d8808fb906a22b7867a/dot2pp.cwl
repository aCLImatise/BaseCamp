class: CommandLineTool
id: dot2pp.cwl
inputs:
- id: in_filed_p_ps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile_pp
  doc: ''
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dot2pp
