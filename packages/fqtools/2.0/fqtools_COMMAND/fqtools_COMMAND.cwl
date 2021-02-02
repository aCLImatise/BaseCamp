class: CommandLineTool
id: fqtools_COMMAND.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -F
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    prefix: -B
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_hv_dram_uli
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hvdramuli
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fqtools
- COMMAND
