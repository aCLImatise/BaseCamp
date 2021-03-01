class: CommandLineTool
id: resolveSurrogates.cwl
inputs:
- id: in_place_frags_surrogates
  doc: "place all frags in singly-placed surrogates if\nat least fraction x can be\
    \ placed."
  type: string?
  inputBinding:
    prefix: -S
- id: in_place_frags_equivalent
  doc: "place all frags in singly-placed surrogates\naggressively; equivalent to -S\
    \ 0.0\n"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_n
  doc: ''
  type: long?
  inputBinding:
    prefix: -n
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_opts
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
- resolveSurrogates
