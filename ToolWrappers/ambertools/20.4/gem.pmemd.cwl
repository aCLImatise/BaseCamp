class: CommandLineTool
id: gem.pmemd.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_var_5
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
- id: in_pm_emd_dot_gem
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gem.pmemd
