class: CommandLineTool
id: meryl.cwl
inputs:
- id: in__compute_parameters
  doc: -- compute parameters
  type: boolean?
  inputBinding:
    prefix: -P
- id: in__build_table
  doc: -- build table
  type: boolean?
  inputBinding:
    prefix: -B
- id: in__scan_table
  doc: -- scan table
  type: boolean?
  inputBinding:
    prefix: -S
- id: in___operations
  doc: -- "math" operations
  type: boolean?
  inputBinding:
    prefix: -M
- id: in__dump_table
  doc: -- dump table
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_personality
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_global
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- meryl
