class: CommandLineTool
id: byobu_tmux.cwl
inputs:
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -L
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_two_clu_vv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -2CluvV
- id: in_t_mux
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
- byobu-tmux
