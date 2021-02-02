class: CommandLineTool
id: fragsInVars.cwl
inputs:
- id: in_var_scf
  doc: ''
  type: string
  inputBinding:
    prefix: -varscf
- id: in_frg_scf
  doc: ''
  type: string
  inputBinding:
    prefix: -frgscf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fragsInVars
